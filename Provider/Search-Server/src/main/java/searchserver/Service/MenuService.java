package searchserver.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import searchserver.Bean.Menu;
import searchserver.Dao.MenuRepository;

import java.util.List;

/**
 * @Author ZhangZiQiang
 * @Date 2019/9/7 23:42
 **/
@Service
public class MenuService {

    @Autowired
    private MenuRepository menuRepository;

    public Page<Menu> searchByName(String name, Pageable pageable) {
        return menuRepository.findByNameLike(name, pageable);
    }

    public Page<Menu> findAll(Pageable pageable){
        return menuRepository.findAll(pageable);
    }

    public Page<Menu> findByPinyin(String pinyin, Pageable pageable) {
        return menuRepository.findByPinyinLike(pinyin, pageable);
    }

}
