package com.kgc.service;

import com.alipay.api.domain.Account;
import com.kgc.pojo.*;

import java.util.List;

/**
 * @author shkstart
 * @create 2020-10-15 18:32
 */
public interface LvDongService {





    //查询试卷
    List<ExamPaper> lvSelectPaper();
    //添加试卷
    int lvAddExamPapar(ExamPaper examPaper);

    int lvSelectByPaper(String papername);

    int lvAddExamItems(ExamItems examItems);
}
