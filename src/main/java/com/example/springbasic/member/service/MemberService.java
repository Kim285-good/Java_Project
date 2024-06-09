package com.example.springbasic.member.service;

import com.example.springbasic.member.dto.MemberDTO;
import com.example.springbasic.member.entity.MemberEntity;
import com.example.springbasic.member.repository.MemberRepository;
import lombok.RequiredArgsConstructor;
import org.mindrot.jbcrypt.BCrypt;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberRepository memberRepository;

    public void save(MemberDTO memberDTO) {
        // 비밀번호 해시 처리
        String hashedPassword = BCrypt.hashpw(memberDTO.getMemberPassword(), BCrypt.gensalt());
        memberDTO.setMemberPassword(hashedPassword); // 암호화된 비밀번호로 설정
        MemberEntity memberEntity = MemberEntity.toMemberEntity(memberDTO);
        memberRepository.save(memberEntity);
    }

    public MemberDTO login(MemberDTO memberDTO) {
        Optional<MemberEntity> byEmail = memberRepository.findByEmail(memberDTO.getMemberEmail());
        if (byEmail.isPresent()) {
            MemberEntity memberEntity = byEmail.get();
            if (BCrypt.checkpw(memberDTO.getMemberPassword(), memberEntity.getPassword())) {
                // 비밀번호 일치
                return MemberDTO.toMemberDTO(memberEntity);
            } else {
                // 비밀번호 불일치
                return null;
            }
        } else {
            // 조회 결과 없음
            return null;
        }
    }
}
