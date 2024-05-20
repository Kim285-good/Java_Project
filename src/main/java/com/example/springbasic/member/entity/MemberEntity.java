package com.example.springbasic.member.entity;

import com.example.springbasic.member.dto.MemberDTO;
import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

@Entity
@Setter
@Getter
@Table(name = "users")
public class MemberEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    @Column(unique = true)
    private String email;

    @Column
    private String password;

    @Column
    private String username;

    public static MemberEntity toMemberEntity(MemberDTO memberDTO) {
        MemberEntity memberEntity = new MemberEntity();
        memberEntity.setEmail(memberDTO.getMemberEmail());
        memberEntity.setPassword(memberDTO.getMemberPassword());
        memberEntity.setUsername(memberDTO.getMemberName());
        return memberEntity;
    }
}
