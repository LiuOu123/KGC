package com.kgc.service.impl;
import com.kgc.mapper.*;
import com.kgc.pojo.*;
import com.kgc.service.LvDongService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-15 18:32
 */
@Service
public class LvDongServiceImpl implements LvDongService {

    @Resource
    ExamPaperMapper examPaperMapper;
    @Resource
    ExamItemsMapper examItemsMapper;


    @Override
    public List<ExamPaper> lvSelectPaper() {
        ExamPaperExample examPaperExample=new ExamPaperExample();
        examPaperExample.setOrderByClause("create_time desc");
        return examPaperMapper.selectByExample(examPaperExample);
    }

    @Override
    public int lvAddExamPapar(ExamPaper examPaper) {
        return examPaperMapper.insertSelective(examPaper);
    }

    @Override
    public int lvSelectByPaper(String papername) {
        ExamPaperExample paperExample=new ExamPaperExample();
        paperExample.setOrderByClause("create_time desc");
        ExamPaperExample.Criteria criteria = paperExample.createCriteria();
        criteria.andPapernameEqualTo(papername);
        List<ExamPaper> examPapers = examPaperMapper.selectByExample(paperExample);
        return examPapers.get(0).getPaperid();
    }

    @Override
    public int lvAddExamItems(ExamItems examItems) {
        return examItemsMapper.insertSelective(examItems);
    }


}
