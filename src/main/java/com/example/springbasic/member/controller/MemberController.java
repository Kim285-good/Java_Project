package com.example.springbasic.member.controller;

import com.example.springbasic.member.dto.MemberDTO;
import com.example.springbasic.member.service.MemberService;
import jakarta.servlet.http.HttpSession;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
@RequiredArgsConstructor
public class MemberController {
    private final MemberService memberService;

    @GetMapping("/member/save")
    public String saveForm() {
        return "save"; // 회원가입 페이지
    }

    @PostMapping("/member/save")
    public String save(@ModelAttribute MemberDTO memberDTO) {
        memberService.save(memberDTO);
        return "login"; // 회원가입 후 로그인 페이지로 이동
    }

    @GetMapping("/member/login")
    public String loginForm() {
        return "login"; // 로그인 페이지
    }

    @PostMapping("/member/login")
    public String login(@ModelAttribute MemberDTO memberDTO, HttpSession session) {
        MemberDTO loginResult = memberService.login(memberDTO);
        if (loginResult != null) {
            // 로그인 성공
            session.setAttribute("loginEmail", loginResult.getMemberEmail());
            return "redirect:/notice"; // 로그인 성공 후 리다이렉트
        } else {
            // 로그인 실패
            return "redirect:/member/login?error=true";
        }
    }

    @GetMapping("/member/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "login"; // 로그아웃 후 로그인 페이지로 이동
    }
}
