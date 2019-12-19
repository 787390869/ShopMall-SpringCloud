from selenium import webdriver
from urllib.parse import quote
from pyquery import PyQuery as pq
from selenium.webdriver.support.wait import WebDriverWait
from selenium.common.exceptions import InvalidSessionIdException
import os,requests,time
import shutil
import sys
import pymysql,pypinyin

# MYSQL 配置信息
mysql_host = "127.0.0.1"
mysql_port = 3306
mysql_username = "root"
mysql_password = "wowangle"
mysql_database = 'air'

# 表的字段 ! 不可更改 !
fields = ['id', 'name', 'price', 'image', 'imageName', 'imageUrl']

# goods_name = sys.argv[1]
# goods_total_page = sys.argv[2]
browser = webdriver.PhantomJS()

def createDatabaseByPinyin(word):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    sql = "create table " + hp(word) + "(" + \
          fields[0] + " INT primary KEY ," + \
          fields[1] + " VARCHAR(200)," + \
          fields[2] + " VARCHAR (45)," + \
          fields[3] + " VARCHAR (100)," + \
          fields[4] + " VARCHAR (200)," + \
          fields[5] + " VARCHAR(50) )"
    cursor.execute(sql)
    cursor.close()

# 插入数据
def insertIntoDatabaseByword(word, Goods):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    sql = "insert into " + hp(word) + "(" + \
        fields[0] + "," + fields[1] + "," + fields[2] + "," +\
        fields[3] + "," + fields[4] + "," + fields[5] +\
        ") values (%s, %s, %s, %s, %s, %s)"
    cursor.execute(sql, (Goods.id, Goods.name, Goods.price, Goods.imageUrl, Goods.image, Goods.imageName))
    db.commit()
    cursor.close()

# 删除表
def dropDatabaseByword(goods_name):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    sql='drop table if exists '+ hp(goods_name)
    cursor.execute(sql)

# 品类库
def getTestGood(keyword):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    sql="select * from test where name = %s"
    cursor.execute(sql,(keyword))
    result = cursor.fetchone()
    cursor.close()
    return result

# 新增品类
def insertIntoTest(keyword):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    id = getDatebaseIdByword('test')
    sql="insert into test(id,name,pinyin) values (%s,%s, %s)"
    cursor.execute(sql,(id,keyword, hp(keyword)))
    db.commit()
    cursor.close()

# 获取count
def getDatebaseIdByword(goods_name):
    db = pymysql.connect(
        host=mysql_host,
        user=mysql_username,
        password=mysql_password,
        port=mysql_port,
        db=mysql_database)
    cursor = db.cursor()
    databaseName = hp(goods_name)
    sql="select * from "+databaseName
    try:
        cursor.execute(sql)
        return cursor.rowcount+1
    except:
        print("获取表的count出错!")
    cursor.close()

class Goods:
    def __init__(self, id, name, price, imageUrl, image, imageName):
        self.id = id
        self.name = name
        self.price = price
        self.image = image
        self.imageName = imageName
        self.imageUrl = imageUrl

class Param:
    def __init__(self, goods_name, goods_total_page):
        self.goods_name = goods_name
        self.goods_total_page = goods_total_page
        self.file_path = "D://Python//Files//" + goods_name
        self.target_url = 'https://search.jd.com/Search?keyword=' + quote(goods_name) + '&enc=utf-8'

def start(param):
    browser.get(param.target_url)
    index_page(1, param.goods_total_page, param)
    print(param.goods_name, ' 数据已更新')
    browser.close()

# 抓
def index_page(currentPage, total_page, param):
    if currentPage > 0 and currentPage <= int(total_page):
        print("正在抓取第", currentPage, "/", int(total_page), "页")
        nextPage = browser.find_element_by_css_selector('.pn-next')
        product = get_products()
        save(product, currentPage, param)
        currentPage = currentPage + 1
        nextPage.click()
        if currentPage <= total_page:
            time.sleep(10)
        return index_page(currentPage, param.goods_total_page, param)

# 整理商品数据
def get_products():
    #browser.execute_script('window.scrollTo(0,document.body.scrollHeight)')
    html = browser.page_source
    doc = pq(html)
    items = doc('#J_goodsList').find('.gl-warp').find('.gl-item').items()
    products = {}
    for item in items:
        products['title'] = item.find('.gl-i-wrap').find('.p-name').children().children(':first-child').text().replace('\n','').replace(' ','')
        products['price'] = item.find('.gl-i-wrap').find('.p-price').children().text().replace('\n','').replace('￥','')
        if(item.find('.gl-i-wrap').find('.p-img').children(':first-child').children(':first-child').attr('src')):
            products['image'] = item.find('.gl-i-wrap').find('.p-img').children(':first-child').children(':first-child').attr('src')
        else:
            products['image'] = item.find('.gl-i-wrap').find('.p-img').children(':first-child').children(':first-child').attr('data-lazy-img')
        yield products

# 存数据库, 下图片
def save(dict, currentPage, param):
    root = param.file_path
    # if not os.path.exists(root):
    #     createDatabaseByPinyin(param.goods_name)
    #     os.makedirs(root)
    # if os.path.exists(root) and currentPage == 1:
    #     shutil.rmtree(root)
    #     dropDatabaseByword(param.goods_name)
    #     createDatabaseByPinyin(param.goods_name)
    #     os.makedirs(root)
    roots = root + "//"
    if currentPage == 1:
        dropDatabaseByword(param.goods_name)
        createDatabaseByPinyin(param.goods_name)
    for i in dict:
        imageUrl = 'http:' + i.get('image')
        list = imageUrl.split('/')
        imageName = list[len(list)-1].replace('.png', '.jpg')
        path = roots + imageName
        url = "images/" + param.goods_name + "/" + imageName
        if not os.path.exists(path):
            goods = Goods(getDatebaseIdByword(param.goods_name), i.get('title'), i.get('price'), url, i.get('image'), imageName)
            insertIntoDatabaseByword(param.goods_name, goods)
            #getImage(path, imageUrl)
        else:
            print(i.get('title'), ": 文件已存在!")

# 写文件
def getImage(path, imageUrl):
    image = requests.get(imageUrl)
    with open(path, 'wb') as f:
        f.write(image.content)

def hp(word):
    s = ''
    for i in pypinyin.pinyin(word, style=pypinyin.NORMAL):
        s += ''.join(i)
    return s.replace('v','u')


if __name__ == "__main__":
    goods_name = '家具'
    goods_total_page = 2
    param = Param(goods_name, goods_total_page)
    try:
        if (getTestGood(goods_name) == None):
            insertIntoTest(goods_name)
        start(param)
    except InvalidSessionIdException:
        print('版本不兼容')