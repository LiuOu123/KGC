package com.kgc.service.impl;

import com.kgc.pojo.Works;
import org.apache.poi.hssf.usermodel.*;

import javax.servlet.ServletOutputStream;
import java.util.Date;
import java.util.List;


public class ExcleImpl {
    worksServiceImpl  worksService=new worksServiceImpl();

    public void export(String[] titles, ServletOutputStream out, Integer wids, String users, String replyneis, String imgs,String gnames, Date wordates) throws Exception{
        try{
            // 第一步，创建一个workbook，对应一个Excel文件
            HSSFWorkbook workbook = new HSSFWorkbook();

            // 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
            HSSFSheet hssfSheet = workbook.createSheet("sheet1");

            // 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short

            HSSFRow row = hssfSheet.createRow(0);
            // 第四步，创建单元格，并设置值表头 设置表头居中
            HSSFCellStyle hssfCellStyle = workbook.createCellStyle();

            //居中样式
            hssfCellStyle.setAlignment(HSSFCellStyle.ALIGN_CENTER);

            HSSFCell hssfCell = null;
            for (int i = 0; i < titles.length; i++) {
                hssfCell = row.createCell(i);//列索引从0开始
                hssfCell.setCellValue(titles[i]);//列名1
                hssfCell.setCellStyle(hssfCellStyle);//列居中显示
            }

            // 第五步，写入实体数据
//            Person person1=new Person("1","张三","123","26");
//            Person  person2=new Person("2","李四","123","18");
//            Person  person3=new Person("3","王五","123","77");
//            Person  person4=new Person("4","徐小筱","123","1");

            //这里我把list当做数据库啦
            List<Works> workshuifu = worksService.workshuifu(null);
//            ArrayList<Person>  list=new ArrayList<Person>();
//            list.add(person1);
//            list.add(person2);
//            list.add(person3);
//            list.add(person4);

            for (int i = 0; i < workshuifu.size(); i++) {
                row = hssfSheet.createRow(i+1);
                Works works = workshuifu.get(i);

                // 第六步，创建单元格，并设置值
                Integer  wid =0;
                if(works.getWid()!= 0){
                    wid = works.getWid();
                }

                row.createCell(0).setCellValue(wid);
                String  user = "";
                if(works.getUser().getUser() != null){
                    user = works.getUser().getUser();
                }

                row.createCell(1).setCellValue(user);
                String  replynei = "";
                if(works.getReply().getReplynei() != null){
                    replynei = works.getReply().getReplynei();
                }
                row.createCell(2).setCellValue(replynei);
                String img = "";
                if(works.getImg() != null){
                    img = works.getImg();
                }
                row.createCell(3).setCellValue(img);
                String gname=null;
                if(works.getGrade().getGname() !=null){
                    gname = works.getGrade().getGname();
                }
                row.createCell(4).setCellValue(gname);
                Date wordate=null;
                if(works.getWordate() !=null){
                    wordate =works.getWordate();
                }
                row.createCell(5).setCellValue(wordate);

            }

            // 第七步，将文件输出到客户端浏览器
            try {
                workbook.write(out);
                out.flush();
                out.close();

            } catch (Exception e) {
                e.printStackTrace();
            }
        }catch(Exception e){
            e.printStackTrace();
            throw new Exception("导出信息失败！");

        }
    }
}
