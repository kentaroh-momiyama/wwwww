package com.i3systems.momiken.jbatch;

import org.springframework.batch.item.file.mapping.FieldSetMapper;
import org.springframework.batch.item.file.transform.FieldSet;
import org.springframework.validation.BindException;

public class MemberFieldSetMapper implements FieldSetMapper<Member> {
	  @Override
	  public Member mapFieldSet(FieldSet fs) throws BindException {
	     Member member = new Member();
	     member.setNum(fs.readInt("num", 0));
	     member.setName(fs.readString("name"));
	     return member;
	  }
}
