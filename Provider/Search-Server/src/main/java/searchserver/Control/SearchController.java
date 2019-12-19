package searchserver.Control;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import searchserver.Bean.Menu;
import searchserver.Service.MenuService;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/7 18:00
 **/
@RestController
@RequestMapping("/conventional")
public class SearchController {

    @Autowired
    private MenuService menuService;

    /**
      * ES 商品名检索
      *@Author ZhangZiQiang
      *@Param [name, page, size]
      *@Return java.util.List<java.lang.String>
      *@Date 2019/9/9 9:38
      */
    @GetMapping("search/{name}/{page}/{size}")
    public List<String> searchByName(@PathVariable("name")String name, @PathVariable("page")int page, @PathVariable("size")int size) {
        List<String> menu = new ArrayList<>();
        Pageable pageable = PageRequest.of(page, size);
        Page<Menu> menus = menuService.searchByName(name, pageable);
        List<Menu> menuList = menus.getContent();
        if(menuList.size() == 0){
            Page<Menu> pinyinMenu = menuService.findByPinyin(name,pageable);
            menuList = pinyinMenu.getContent();
        }
        for(Menu m: menuList) {
            menu.add(m.getName());
        }
        return menu;
    }

    /**
      * ES获取所有商品
      *@Author ZhangZiQiang
      *@Param [page, size]
      *@Return java.util.List<java.lang.String>
      *@Date 2019/9/9 9:38
      */
    @GetMapping("findAll/{page}/{size}")
    public List<String> findAll(@PathVariable("page")int page, @PathVariable("size")int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<Menu> menuList = menuService.findAll(pageable);
        return menuList.getContent().stream()
                .filter((m) -> m.getName()!= null)
                .map(Menu::getName)
                .collect(Collectors.toList());
    }

}
