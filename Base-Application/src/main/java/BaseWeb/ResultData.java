package BaseWeb;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.annotation.JsonInclude.Include;

import java.io.Serializable;
import java.util.List;

/**
 * @Author: ZhangZiQiang
 * @Date: 2019-11-25 13:49
 **/
@JsonInclude(Include.NON_NULL)
public class ResultData<T> implements Serializable {

    public static final int RESULT_CODE_SUCCESS = 1;
    public static final int RESULT_CODE_FAIL = 0;
    public static final String RESULT_MESSAGE_SUCCESS = "执行成功";
    public static final String RESULT_MESSAGE_FAIL = "执行失败";
    public static final String MESSAGE_ADD_SUCCESS = "新增成功";
    public static final String MESSAGE_ADD_FAIL = "新增失败";
    public static final String MESSAGE_DELETE_SUCCESS = "删除成功";
    public static final String MESSAGE_DELETE_FAIL = "删除失败";
    public static final String MESSAGE_QUERY_SUCCESS = "查询成功";
    public static final String MESSAGE_QUERY_FAIL = "查询失败";
    public static final String MESSAGE_UPDATE_SUCCESS = "编辑成功";
    public static final String MESSAGE_UPDATE_FAIL = "编辑失败";

    private Integer code;
    private String message;
    private T data;
    private List<T> dataList;

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public T getData() {
        return data;
    }

    public void setData(T data) {
        this.data = data;
    }

    public List<T> getDataList() {
        return dataList;
    }

    public void setDataList(List<T> dataList) {
        this.dataList = dataList;
    }

    public ResultData(T data) {
        this.code = RESULT_CODE_SUCCESS;
        this.message = RESULT_MESSAGE_SUCCESS;
        this.data = data;
    }

    public ResultData(List<T> dataList) {
        this.code = RESULT_CODE_SUCCESS;
        this.message = RESULT_MESSAGE_SUCCESS;
        this.dataList = dataList;
    }

    public ResultData(Integer code, String message, T data) {
        this.code = code;
        this.message = message;
        this.data = data;
    }

    public ResultData(Integer code, String message) {
        this.code = code;
        this.message = message;
    }

    public ResultData() {}
}

