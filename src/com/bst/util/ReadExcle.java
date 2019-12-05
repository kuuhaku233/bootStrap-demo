package com.bst.util;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;

public class ReadExcle {
    public static void main(String[] args) {
        String filePath="C:\\Users\\呼吸Deep\\Desktop\\人员表.xls";
        getExcel(filePath,8);
        filePath.getClass();
       /* Class.forName("java.lang.String");
        ReadExcle readExcle=new ReadExcle();
        Class<ReadExcle> class = ReadExcle.class;*/
    }
    /**
     * 读取excel文件
     * @param filePath  读取xsl文件的路径
     * @param ars       读取xsl文件的列数
     * @return          读取的xsl文件的内容
     */
    public static ArrayList<ArrayList<String>> getExcel(String filePath, int ars) {
        //构建文件的输入流
        FileInputStream in = null;
        //构造最终的结果
        ArrayList<ArrayList<String>> lists = new ArrayList<>();
        //文件路径
        File file = new File(filePath);
        try {
            in = new FileInputStream(file);
            HSSFWorkbook xssfWorkbook = new HSSFWorkbook(in);
            //遍历是否有多个 sheet
            for (int numssheet = 0; numssheet < xssfWorkbook.getNumberOfSheets(); numssheet++) {
                //根据下表拿取sheet文件对象
                HSSFSheet sheet = xssfWorkbook.getSheetAt(numssheet);
                //判断是否为空
                if (sheet == null) {
                    continue;
                }
                //循环遍历当前sheet页的行数据
                for (int rows = 0; rows <= sheet.getLastRowNum(); rows++) {
                    //获取Row行对象
                    HSSFRow row = sheet.getRow(rows);
                    if (row == null) {
                        continue;
                    }
                    //存放每行的数据
                    ArrayList<String> cells = new ArrayList<>();
                    //通过第三次循环获取列 对象
                    for (int colums = 0; colums < ars; colums++) {
                        //获取列对象
                        HSSFCell cell = row.getCell(colums);
                        //获取列的值
                        if (cell == null) {
                            continue;
                        }
                        /*switch (cell.getCellType()) {
                            case HSSFCell.CELL_TYPE_BOOLEAN:
                                //得到Boolean对象的方法
                                System.out.print(cell.getBooleanCellValue() + " ");
                                break;
                            case HSSFCell.CELL_TYPE_NUMERIC:
                                //先看是否是日期格式
                                if (HSSFDateUtil.isCellDateFormatted(cell)) {
                                    //读取日期格式
                                    System.out.print(cell.getDateCellValue() + " ");
                                } else {
                                    //读取数字
                                    System.out.print(cell.getNumericCellValue() + " ");
                                }
                                break;
                            case HSSFCell.CELL_TYPE_FORMULA:
                                //读取公式
                                System.out.print(cell.getCellFormula() + " ");
                                break;
                            case HSSFCell.CELL_TYPE_STRING:
                                //读取String
                                System.out.print(cell.getRichStringCellValue().toString() + " ");
                                break;
                        }*/
                        System.out.print(cell.getStringCellValue().trim()+"\t");
                        cells.add(cell.getStringCellValue().trim());
                    }
                    System.out.println();
                    lists.add(cells);
                }

            }
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return lists;
    }
}
