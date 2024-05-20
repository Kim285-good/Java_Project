package com.example.springbasic.member.dto;

import com.example.springbasic.member.entity.MemberEntity;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor // 기본생성자를 자동으로 만들어줌
@ToString // DTO가 가지고 있는 필드값을 출력할 때(ToString 메소드를 자동으로 생성)
public class MemberDTO {
    private Long id;
    private String memberEmail;
    private String memberPassword;
    private String memberName;

    public static MemberDTO toMemberDTO(MemberEntity memberEntity) {
        MemberDTO memberDTO = new MemberDTO();
        memberDTO.setId(memberEntity.getId());
        memberDTO.setMemberEmail(memberEntity.getEmail());
        memberDTO.setMemberPassword(memberEntity.getPassword());
        memberDTO.setMemberName(memberEntity.getUsername());
        return memberDTO;
    }
}
