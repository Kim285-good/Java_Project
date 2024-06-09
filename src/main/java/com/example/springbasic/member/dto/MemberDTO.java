package com.example.springbasic.member.dto;

import com.example.springbasic.member.entity.MemberEntity;
import lombok.Data;

@Data
public class MemberDTO {
    private String memberEmail;
    private String memberPassword;
    private String memberName;

    public static MemberDTO toMemberDTO(MemberEntity memberEntity) {
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setMemberEmail(memberEntity.getEmail());
        // 비밀번호는 여기서 설정하지 않음
        memberDTO.setMemberName(memberEntity.getUsername());
        return memberDTO;
    }
}
