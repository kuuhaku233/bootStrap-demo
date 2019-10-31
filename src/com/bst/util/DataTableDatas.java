package com.bst.util;

import org.apache.poi.hssf.record.formula.functions.T;

import java.util.List;

public class DataTableDatas<T> {
    private String draw;
    private String recordsTotal;
    private String recordsFiltered;

    private List<T> data;

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }

    public String getDraw() {
        return draw;
    }

    public void setDraw(String draw) {
        this.draw = draw;
    }

    public String getRecordsTotal() {
        return recordsTotal;
    }

    public void setRecordsTotal(String recordsTotal) {
        this.recordsTotal = recordsTotal;
    }

    public String getRecordsFiltered() {
        return recordsFiltered;
    }

    public void setRecordsFiltered(String recordsFiltered) {
        this.recordsFiltered = recordsFiltered;
    }
}
