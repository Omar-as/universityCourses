
ctarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c40 <_init>:
  400c40:	48 83 ec 08          	sub    $0x8,%rsp
  400c44:	e8 83 02 00 00       	callq  400ecc <call_gmon_start>
  400c49:	e8 12 03 00 00       	callq  400f60 <frame_dummy>
  400c4e:	e8 4d 27 00 00       	callq  4033a0 <__do_global_ctors_aux>
  400c53:	48 83 c4 08          	add    $0x8,%rsp
  400c57:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 8a 43 20 00    	pushq  0x20438a(%rip)        # 604ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 8c 43 20 00    	jmpq   *0x20438c(%rip)        # 604ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 8a 43 20 00    	jmpq   *0x20438a(%rip)        # 605000 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 82 43 20 00    	jmpq   *0x204382(%rip)        # 605008 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 7a 43 20 00    	jmpq   *0x20437a(%rip)        # 605010 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605018 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605020 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605028 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605030 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605038 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605040 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <htons@plt>:
  400d00:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605048 <htons@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <printf@plt>:
  400d10:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605050 <printf@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605058 <memset@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605060 <alarm@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <close@plt>:
  400d40:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605068 <close@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <read@plt>:
  400d50:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605070 <read@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605078 <__libc_start_main@GLIBC_2.2.5>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605080 <signal@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605088 <gethostbyname@GLIBC_2.2.5>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <fprintf@plt>:
  400d90:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605090 <fprintf@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605098 <memcpy@GLIBC_2.14>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <time@plt>:
  400db0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050a0 <time@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050a8 <random@GLIBC_2.2.5>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050b0 <_IO_getc@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050b8 <__isoc99_sscanf@GLIBC_2.7>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050c0 <munmap@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <bcopy@plt>:
  400e00:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050c8 <bcopy@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050d0 <fopen@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050d8 <getopt@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050e0 <strtoul@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <atoi@plt>:
  400e40:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050e8 <atoi@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <gethostname@plt>:
  400e50:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050f0 <gethostname@GLIBC_2.2.5>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <sprintf@plt>:
  400e60:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050f8 <sprintf@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605100 <exit@GLIBC_2.2.5>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605108 <connect@GLIBC_2.2.5>
  400e86:	68 21 00 00 00       	pushq  $0x21
  400e8b:	e9 d0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605110 <socket@GLIBC_2.2.5>
  400e96:	68 22 00 00 00       	pushq  $0x22
  400e9b:	e9 c0 fd ff ff       	jmpq   400c60 <.plt>

Disassembly of section .text:

0000000000400ea0 <_start>:
  400ea0:	31 ed                	xor    %ebp,%ebp
  400ea2:	49 89 d1             	mov    %rdx,%r9
  400ea5:	5e                   	pop    %rsi
  400ea6:	48 89 e2             	mov    %rsp,%rdx
  400ea9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400ead:	50                   	push   %rax
  400eae:	54                   	push   %rsp
  400eaf:	49 c7 c0 90 33 40 00 	mov    $0x403390,%r8
  400eb6:	48 c7 c1 00 33 40 00 	mov    $0x403300,%rcx
  400ebd:	48 c7 c7 1a 12 40 00 	mov    $0x40121a,%rdi
  400ec4:	e8 97 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ec9:	f4                   	hlt    
  400eca:	90                   	nop
  400ecb:	90                   	nop

0000000000400ecc <call_gmon_start>:
  400ecc:	48 83 ec 08          	sub    $0x8,%rsp
  400ed0:	48 8b 05 09 41 20 00 	mov    0x204109(%rip),%rax        # 604fe0 <__gmon_start__>
  400ed7:	48 85 c0             	test   %rax,%rax
  400eda:	74 02                	je     400ede <call_gmon_start+0x12>
  400edc:	ff d0                	callq  *%rax
  400ede:	48 83 c4 08          	add    $0x8,%rsp
  400ee2:	c3                   	retq   
  400ee3:	90                   	nop
  400ee4:	90                   	nop
  400ee5:	90                   	nop
  400ee6:	90                   	nop
  400ee7:	90                   	nop
  400ee8:	90                   	nop
  400ee9:	90                   	nop
  400eea:	90                   	nop
  400eeb:	90                   	nop
  400eec:	90                   	nop
  400eed:	90                   	nop
  400eee:	90                   	nop
  400eef:	90                   	nop

0000000000400ef0 <__do_global_dtors_aux>:
  400ef0:	55                   	push   %rbp
  400ef1:	48 89 e5             	mov    %rsp,%rbp
  400ef4:	53                   	push   %rbx
  400ef5:	48 83 ec 08          	sub    $0x8,%rsp
  400ef9:	80 3d b8 45 20 00 00 	cmpb   $0x0,0x2045b8(%rip)        # 6054b8 <completed.6531>
  400f00:	75 4b                	jne    400f4d <__do_global_dtors_aux+0x5d>
  400f02:	bb 40 4e 60 00       	mov    $0x604e40,%ebx
  400f07:	48 8b 05 b2 45 20 00 	mov    0x2045b2(%rip),%rax        # 6054c0 <dtor_idx.6533>
  400f0e:	48 81 eb 38 4e 60 00 	sub    $0x604e38,%rbx
  400f15:	48 c1 fb 03          	sar    $0x3,%rbx
  400f19:	48 83 eb 01          	sub    $0x1,%rbx
  400f1d:	48 39 d8             	cmp    %rbx,%rax
  400f20:	73 24                	jae    400f46 <__do_global_dtors_aux+0x56>
  400f22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f28:	48 83 c0 01          	add    $0x1,%rax
  400f2c:	48 89 05 8d 45 20 00 	mov    %rax,0x20458d(%rip)        # 6054c0 <dtor_idx.6533>
  400f33:	ff 14 c5 38 4e 60 00 	callq  *0x604e38(,%rax,8)
  400f3a:	48 8b 05 7f 45 20 00 	mov    0x20457f(%rip),%rax        # 6054c0 <dtor_idx.6533>
  400f41:	48 39 d8             	cmp    %rbx,%rax
  400f44:	72 e2                	jb     400f28 <__do_global_dtors_aux+0x38>
  400f46:	c6 05 6b 45 20 00 01 	movb   $0x1,0x20456b(%rip)        # 6054b8 <completed.6531>
  400f4d:	48 83 c4 08          	add    $0x8,%rsp
  400f51:	5b                   	pop    %rbx
  400f52:	5d                   	pop    %rbp
  400f53:	c3                   	retq   
  400f54:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400f5b:	00 00 00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	48 83 3d e0 3e 20 00 	cmpq   $0x0,0x203ee0(%rip)        # 604e48 <__JCR_END__>
  400f67:	00 
  400f68:	55                   	push   %rbp
  400f69:	48 89 e5             	mov    %rsp,%rbp
  400f6c:	74 12                	je     400f80 <frame_dummy+0x20>
  400f6e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f73:	48 85 c0             	test   %rax,%rax
  400f76:	74 08                	je     400f80 <frame_dummy+0x20>
  400f78:	5d                   	pop    %rbp
  400f79:	bf 48 4e 60 00       	mov    $0x604e48,%edi
  400f7e:	ff e0                	jmpq   *%rax
  400f80:	5d                   	pop    %rbp
  400f81:	c3                   	retq   
  400f82:	90                   	nop
  400f83:	90                   	nop

0000000000400f84 <initialize_target>:
  400f84:	55                   	push   %rbp
  400f85:	48 89 e5             	mov    %rsp,%rbp
  400f88:	48 81 ec 30 21 00 00 	sub    $0x2130,%rsp
  400f8f:	89 bd dc de ff ff    	mov    %edi,-0x2124(%rbp)
  400f95:	89 b5 d8 de ff ff    	mov    %esi,-0x2128(%rbp)
  400f9b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fa2:	00 00 
  400fa4:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  400fa8:	31 c0                	xor    %eax,%eax
  400faa:	8b 85 dc de ff ff    	mov    -0x2124(%rbp),%eax
  400fb0:	89 05 3a 45 20 00    	mov    %eax,0x20453a(%rip)        # 6054f0 <check_level>
  400fb6:	8b 05 b4 44 20 00    	mov    0x2044b4(%rip),%eax        # 605470 <target_id>
  400fbc:	89 c7                	mov    %eax,%edi
  400fbe:	e8 fc 22 00 00       	callq  4032bf <gencookie>
  400fc3:	89 05 1b 45 20 00    	mov    %eax,0x20451b(%rip)        # 6054e4 <cookie>
  400fc9:	8b 05 15 45 20 00    	mov    0x204515(%rip),%eax        # 6054e4 <cookie>
  400fcf:	89 c7                	mov    %eax,%edi
  400fd1:	e8 e9 22 00 00       	callq  4032bf <gencookie>
  400fd6:	89 05 0c 45 20 00    	mov    %eax,0x20450c(%rip)        # 6054e8 <authkey>
  400fdc:	8b 05 8e 44 20 00    	mov    0x20448e(%rip),%eax        # 605470 <target_id>
  400fe2:	83 c0 01             	add    $0x1,%eax
  400fe5:	89 c7                	mov    %eax,%edi
  400fe7:	e8 a4 fc ff ff       	callq  400c90 <srandom@plt>
  400fec:	e8 cf fd ff ff       	callq  400dc0 <random@plt>
  400ff1:	89 c7                	mov    %eax,%edi
  400ff3:	e8 64 04 00 00       	callq  40145c <scramble>
  400ff8:	89 85 ec de ff ff    	mov    %eax,-0x2114(%rbp)
  400ffe:	c7 85 e0 de ff ff 00 	movl   $0x0,-0x2120(%rbp)
  401005:	00 00 00 
  401008:	83 bd d8 de ff ff 00 	cmpl   $0x0,-0x2128(%rbp)
  40100f:	74 1c                	je     40102d <initialize_target+0xa9>
  401011:	bf 00 00 00 00       	mov    $0x0,%edi
  401016:	e8 95 fd ff ff       	callq  400db0 <time@plt>
  40101b:	89 c7                	mov    %eax,%edi
  40101d:	e8 6e fc ff ff       	callq  400c90 <srandom@plt>
  401022:	e8 99 fd ff ff       	callq  400dc0 <random@plt>
  401027:	89 85 e0 de ff ff    	mov    %eax,-0x2120(%rbp)
  40102d:	8b 85 e0 de ff ff    	mov    -0x2120(%rbp),%eax
  401033:	8b 95 ec de ff ff    	mov    -0x2114(%rbp),%edx
  401039:	01 d0                	add    %edx,%eax
  40103b:	25 ff ff 00 00       	and    $0xffff,%eax
  401040:	83 c0 20             	add    $0x20,%eax
  401043:	c1 e0 03             	shl    $0x3,%eax
  401046:	89 c0                	mov    %eax,%eax
  401048:	48 89 05 39 44 20 00 	mov    %rax,0x204439(%rip)        # 605488 <buf_offset>
  40104f:	c6 05 ce 50 20 00 63 	movb   $0x63,0x2050ce(%rip)        # 606124 <target_prefix>
  401056:	8b 05 24 44 20 00    	mov    0x204424(%rip),%eax        # 605480 <notify>
  40105c:	85 c0                	test   %eax,%eax
  40105e:	0f 84 06 01 00 00    	je     40116a <initialize_target+0x1e6>
  401064:	8b 05 76 44 20 00    	mov    0x204476(%rip),%eax        # 6054e0 <is_checker>
  40106a:	85 c0                	test   %eax,%eax
  40106c:	0f 85 f8 00 00 00    	jne    40116a <initialize_target+0x1e6>
  401072:	c7 85 e8 de ff ff 00 	movl   $0x0,-0x2118(%rbp)
  401079:	00 00 00 
  40107c:	48 8d 85 f0 fe ff ff 	lea    -0x110(%rbp),%rax
  401083:	be 00 01 00 00       	mov    $0x100,%esi
  401088:	48 89 c7             	mov    %rax,%rdi
  40108b:	e8 c0 fd ff ff       	callq  400e50 <gethostname@plt>
  401090:	85 c0                	test   %eax,%eax
  401092:	74 14                	je     4010a8 <initialize_target+0x124>
  401094:	bf f0 33 40 00       	mov    $0x4033f0,%edi
  401099:	e8 22 fc ff ff       	callq  400cc0 <puts@plt>
  40109e:	bf 08 00 00 00       	mov    $0x8,%edi
  4010a3:	e8 c8 fd ff ff       	callq  400e70 <exit@plt>
  4010a8:	c7 85 e4 de ff ff 00 	movl   $0x0,-0x211c(%rbp)
  4010af:	00 00 00 
  4010b2:	eb 39                	jmp    4010ed <initialize_target+0x169>
  4010b4:	8b 85 e4 de ff ff    	mov    -0x211c(%rbp),%eax
  4010ba:	48 98                	cltq   
  4010bc:	48 8b 04 c5 40 51 60 	mov    0x605140(,%rax,8),%rax
  4010c3:	00 
  4010c4:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  4010cb:	48 89 d6             	mov    %rdx,%rsi
  4010ce:	48 89 c7             	mov    %rax,%rdi
  4010d1:	e8 9a fb ff ff       	callq  400c70 <strcasecmp@plt>
  4010d6:	85 c0                	test   %eax,%eax
  4010d8:	75 0c                	jne    4010e6 <initialize_target+0x162>
  4010da:	c7 85 e8 de ff ff 01 	movl   $0x1,-0x2118(%rbp)
  4010e1:	00 00 00 
  4010e4:	eb 1c                	jmp    401102 <initialize_target+0x17e>
  4010e6:	83 85 e4 de ff ff 01 	addl   $0x1,-0x211c(%rbp)
  4010ed:	8b 85 e4 de ff ff    	mov    -0x211c(%rbp),%eax
  4010f3:	48 98                	cltq   
  4010f5:	48 8b 04 c5 40 51 60 	mov    0x605140(,%rax,8),%rax
  4010fc:	00 
  4010fd:	48 85 c0             	test   %rax,%rax
  401100:	75 b2                	jne    4010b4 <initialize_target+0x130>
  401102:	83 bd e8 de ff ff 00 	cmpl   $0x0,-0x2118(%rbp)
  401109:	75 26                	jne    401131 <initialize_target+0x1ad>
  40110b:	b8 28 34 40 00       	mov    $0x403428,%eax
  401110:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401117:	48 89 d6             	mov    %rdx,%rsi
  40111a:	48 89 c7             	mov    %rax,%rdi
  40111d:	b8 00 00 00 00       	mov    $0x0,%eax
  401122:	e8 e9 fb ff ff       	callq  400d10 <printf@plt>
  401127:	bf 08 00 00 00       	mov    $0x8,%edi
  40112c:	e8 3f fd ff ff       	callq  400e70 <exit@plt>
  401131:	48 8d 85 f0 de ff ff 	lea    -0x2110(%rbp),%rax
  401138:	48 89 c7             	mov    %rax,%rdi
  40113b:	e8 42 1e 00 00       	callq  402f82 <init_driver>
  401140:	85 c0                	test   %eax,%eax
  401142:	79 26                	jns    40116a <initialize_target+0x1e6>
  401144:	b8 68 34 40 00       	mov    $0x403468,%eax
  401149:	48 8d 95 f0 de ff ff 	lea    -0x2110(%rbp),%rdx
  401150:	48 89 d6             	mov    %rdx,%rsi
  401153:	48 89 c7             	mov    %rax,%rdi
  401156:	b8 00 00 00 00       	mov    $0x0,%eax
  40115b:	e8 b0 fb ff ff       	callq  400d10 <printf@plt>
  401160:	bf 08 00 00 00       	mov    $0x8,%edi
  401165:	e8 06 fd ff ff       	callq  400e70 <exit@plt>
  40116a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40116e:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401175:	00 00 
  401177:	74 05                	je     40117e <initialize_target+0x1fa>
  401179:	e8 62 fb ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  40117e:	c9                   	leaveq 
  40117f:	c3                   	retq   

0000000000401180 <usage>:
  401180:	55                   	push   %rbp
  401181:	48 89 e5             	mov    %rsp,%rbp
  401184:	48 83 ec 10          	sub    $0x10,%rsp
  401188:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  40118c:	8b 05 4e 43 20 00    	mov    0x20434e(%rip),%eax        # 6054e0 <is_checker>
  401192:	85 c0                	test   %eax,%eax
  401194:	74 43                	je     4011d9 <usage+0x59>
  401196:	b8 90 34 40 00       	mov    $0x403490,%eax
  40119b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40119f:	48 89 d6             	mov    %rdx,%rsi
  4011a2:	48 89 c7             	mov    %rax,%rdi
  4011a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011aa:	e8 61 fb ff ff       	callq  400d10 <printf@plt>
  4011af:	bf c8 34 40 00       	mov    $0x4034c8,%edi
  4011b4:	e8 07 fb ff ff       	callq  400cc0 <puts@plt>
  4011b9:	bf ee 34 40 00       	mov    $0x4034ee,%edi
  4011be:	e8 fd fa ff ff       	callq  400cc0 <puts@plt>
  4011c3:	bf 08 35 40 00       	mov    $0x403508,%edi
  4011c8:	e8 f3 fa ff ff       	callq  400cc0 <puts@plt>
  4011cd:	bf 2a 35 40 00       	mov    $0x40352a,%edi
  4011d2:	e8 e9 fa ff ff       	callq  400cc0 <puts@plt>
  4011d7:	eb 37                	jmp    401210 <usage+0x90>
  4011d9:	b8 46 35 40 00       	mov    $0x403546,%eax
  4011de:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4011e2:	48 89 d6             	mov    %rdx,%rsi
  4011e5:	48 89 c7             	mov    %rax,%rdi
  4011e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ed:	e8 1e fb ff ff       	callq  400d10 <printf@plt>
  4011f2:	bf 68 35 40 00       	mov    $0x403568,%edi
  4011f7:	e8 c4 fa ff ff       	callq  400cc0 <puts@plt>
  4011fc:	bf 90 35 40 00       	mov    $0x403590,%edi
  401201:	e8 ba fa ff ff       	callq  400cc0 <puts@plt>
  401206:	bf bc 35 40 00       	mov    $0x4035bc,%edi
  40120b:	e8 b0 fa ff ff       	callq  400cc0 <puts@plt>
  401210:	bf 00 00 00 00       	mov    $0x0,%edi
  401215:	e8 56 fc ff ff       	callq  400e70 <exit@plt>

000000000040121a <main>:
  40121a:	55                   	push   %rbp
  40121b:	48 89 e5             	mov    %rsp,%rbp
  40121e:	48 83 ec 30          	sub    $0x30,%rsp
  401222:	89 7d dc             	mov    %edi,-0x24(%rbp)
  401225:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401229:	c7 45 f8 01 00 00 00 	movl   $0x1,-0x8(%rbp)
  401230:	48 c7 45 e8 d5 35 40 	movq   $0x4035d5,-0x18(%rbp)
  401237:	00 
  401238:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40123f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401246:	be 4c 20 40 00       	mov    $0x40204c,%esi
  40124b:	bf 0b 00 00 00       	mov    $0xb,%edi
  401250:	e8 1b fb ff ff       	callq  400d70 <signal@plt>
  401255:	be f4 1f 40 00       	mov    $0x401ff4,%esi
  40125a:	bf 07 00 00 00       	mov    $0x7,%edi
  40125f:	e8 0c fb ff ff       	callq  400d70 <signal@plt>
  401264:	be a4 20 40 00       	mov    $0x4020a4,%esi
  401269:	bf 04 00 00 00       	mov    $0x4,%edi
  40126e:	e8 fd fa ff ff       	callq  400d70 <signal@plt>
  401273:	8b 05 67 42 20 00    	mov    0x204267(%rip),%eax        # 6054e0 <is_checker>
  401279:	85 c0                	test   %eax,%eax
  40127b:	74 21                	je     40129e <main+0x84>
  40127d:	be fc 20 40 00       	mov    $0x4020fc,%esi
  401282:	bf 0e 00 00 00       	mov    $0xe,%edi
  401287:	e8 e4 fa ff ff       	callq  400d70 <signal@plt>
  40128c:	bf 05 00 00 00       	mov    $0x5,%edi
  401291:	e8 9a fa ff ff       	callq  400d30 <alarm@plt>
  401296:	48 c7 45 e8 da 35 40 	movq   $0x4035da,-0x18(%rbp)
  40129d:	00 
  40129e:	48 8b 05 fb 41 20 00 	mov    0x2041fb(%rip),%rax        # 6054a0 <__bss_start>
  4012a5:	48 89 05 4c 42 20 00 	mov    %rax,0x20424c(%rip)        # 6054f8 <infile>
  4012ac:	e9 f3 00 00 00       	jmpq   4013a4 <main+0x18a>
  4012b1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  4012b5:	83 e8 61             	sub    $0x61,%eax
  4012b8:	83 f8 10             	cmp    $0x10,%eax
  4012bb:	0f 87 b9 00 00 00    	ja     40137a <main+0x160>
  4012c1:	89 c0                	mov    %eax,%eax
  4012c3:	48 8b 04 c5 58 36 40 	mov    0x403658(,%rax,8),%rax
  4012ca:	00 
  4012cb:	ff e0                	jmpq   *%rax
  4012cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4012d1:	48 8b 00             	mov    (%rax),%rax
  4012d4:	48 89 c7             	mov    %rax,%rdi
  4012d7:	e8 a4 fe ff ff       	callq  401180 <usage>
  4012dc:	e9 c3 00 00 00       	jmpq   4013a4 <main+0x18a>
  4012e1:	ba e2 35 40 00       	mov    $0x4035e2,%edx
  4012e6:	48 8b 05 bb 41 20 00 	mov    0x2041bb(%rip),%rax        # 6054a8 <optarg@@GLIBC_2.2.5>
  4012ed:	48 89 d6             	mov    %rdx,%rsi
  4012f0:	48 89 c7             	mov    %rax,%rdi
  4012f3:	e8 18 fb ff ff       	callq  400e10 <fopen@plt>
  4012f8:	48 89 05 f9 41 20 00 	mov    %rax,0x2041f9(%rip)        # 6054f8 <infile>
  4012ff:	48 8b 05 f2 41 20 00 	mov    0x2041f2(%rip),%rax        # 6054f8 <infile>
  401306:	48 85 c0             	test   %rax,%rax
  401309:	0f 85 94 00 00 00    	jne    4013a3 <main+0x189>
  40130f:	48 8b 15 92 41 20 00 	mov    0x204192(%rip),%rdx        # 6054a8 <optarg@@GLIBC_2.2.5>
  401316:	b9 e4 35 40 00       	mov    $0x4035e4,%ecx
  40131b:	48 8b 05 8e 41 20 00 	mov    0x20418e(%rip),%rax        # 6054b0 <stderr@@GLIBC_2.2.5>
  401322:	48 89 ce             	mov    %rcx,%rsi
  401325:	48 89 c7             	mov    %rax,%rdi
  401328:	b8 00 00 00 00       	mov    $0x0,%eax
  40132d:	e8 5e fa ff ff       	callq  400d90 <fprintf@plt>
  401332:	b8 01 00 00 00       	mov    $0x1,%eax
  401337:	e9 1b 01 00 00       	jmpq   401457 <main+0x23d>
  40133c:	48 8b 05 65 41 20 00 	mov    0x204165(%rip),%rax        # 6054a8 <optarg@@GLIBC_2.2.5>
  401343:	ba 10 00 00 00       	mov    $0x10,%edx
  401348:	be 00 00 00 00       	mov    $0x0,%esi
  40134d:	48 89 c7             	mov    %rax,%rdi
  401350:	e8 db fa ff ff       	callq  400e30 <strtoul@plt>
  401355:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401358:	eb 4a                	jmp    4013a4 <main+0x18a>
  40135a:	48 8b 05 47 41 20 00 	mov    0x204147(%rip),%rax        # 6054a8 <optarg@@GLIBC_2.2.5>
  401361:	48 89 c7             	mov    %rax,%rdi
  401364:	e8 d7 fa ff ff       	callq  400e40 <atoi@plt>
  401369:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40136c:	eb 36                	jmp    4013a4 <main+0x18a>
  40136e:	c7 05 08 41 20 00 00 	movl   $0x0,0x204108(%rip)        # 605480 <notify>
  401375:	00 00 00 
  401378:	eb 2a                	jmp    4013a4 <main+0x18a>
  40137a:	0f be 55 ff          	movsbl -0x1(%rbp),%edx
  40137e:	b8 01 36 40 00       	mov    $0x403601,%eax
  401383:	89 d6                	mov    %edx,%esi
  401385:	48 89 c7             	mov    %rax,%rdi
  401388:	b8 00 00 00 00       	mov    $0x0,%eax
  40138d:	e8 7e f9 ff ff       	callq  400d10 <printf@plt>
  401392:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  401396:	48 8b 00             	mov    (%rax),%rax
  401399:	48 89 c7             	mov    %rax,%rdi
  40139c:	e8 df fd ff ff       	callq  401180 <usage>
  4013a1:	eb 01                	jmp    4013a4 <main+0x18a>
  4013a3:	90                   	nop
  4013a4:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4013a8:	48 8b 4d d0          	mov    -0x30(%rbp),%rcx
  4013ac:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4013af:	48 89 ce             	mov    %rcx,%rsi
  4013b2:	89 c7                	mov    %eax,%edi
  4013b4:	e8 67 fa ff ff       	callq  400e20 <getopt@plt>
  4013b9:	88 45 ff             	mov    %al,-0x1(%rbp)
  4013bc:	80 7d ff ff          	cmpb   $0xff,-0x1(%rbp)
  4013c0:	0f 85 eb fe ff ff    	jne    4012b1 <main+0x97>
  4013c6:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4013ca:	0f 94 c0             	sete   %al
  4013cd:	0f b6 d0             	movzbl %al,%edx
  4013d0:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4013d3:	89 d6                	mov    %edx,%esi
  4013d5:	89 c7                	mov    %eax,%edi
  4013d7:	e8 a8 fb ff ff       	callq  400f84 <initialize_target>
  4013dc:	8b 05 fe 40 20 00    	mov    0x2040fe(%rip),%eax        # 6054e0 <is_checker>
  4013e2:	85 c0                	test   %eax,%eax
  4013e4:	74 2c                	je     401412 <main+0x1f8>
  4013e6:	8b 05 fc 40 20 00    	mov    0x2040fc(%rip),%eax        # 6054e8 <authkey>
  4013ec:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  4013ef:	74 21                	je     401412 <main+0x1f8>
  4013f1:	b8 18 36 40 00       	mov    $0x403618,%eax
  4013f6:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4013f9:	89 d6                	mov    %edx,%esi
  4013fb:	48 89 c7             	mov    %rax,%rdi
  4013fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401403:	e8 08 f9 ff ff       	callq  400d10 <printf@plt>
  401408:	b8 00 00 00 00       	mov    $0x0,%eax
  40140d:	e8 25 08 00 00       	callq  401c37 <check_fail>
  401412:	8b 15 cc 40 20 00    	mov    0x2040cc(%rip),%edx        # 6054e4 <cookie>
  401418:	b8 48 36 40 00       	mov    $0x403648,%eax
  40141d:	89 d6                	mov    %edx,%esi
  40141f:	48 89 c7             	mov    %rax,%rdi
  401422:	b8 00 00 00 00       	mov    $0x0,%eax
  401427:	e8 e4 f8 ff ff       	callq  400d10 <printf@plt>
  40142c:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  401430:	74 11                	je     401443 <main+0x229>
  401432:	48 8b 05 4f 40 20 00 	mov    0x20404f(%rip),%rax        # 605488 <buf_offset>
  401439:	48 89 c7             	mov    %rax,%rdi
  40143c:	e8 db 0d 00 00       	callq  40221c <stable_launch>
  401441:	eb 0f                	jmp    401452 <main+0x238>
  401443:	48 8b 05 3e 40 20 00 	mov    0x20403e(%rip),%rax        # 605488 <buf_offset>
  40144a:	48 89 c7             	mov    %rax,%rdi
  40144d:	e8 05 0d 00 00       	callq  402157 <launch>
  401452:	b8 00 00 00 00       	mov    $0x0,%eax
  401457:	c9                   	leaveq 
  401458:	c3                   	retq   
  401459:	90                   	nop
  40145a:	90                   	nop
  40145b:	90                   	nop

000000000040145c <scramble>:
  40145c:	55                   	push   %rbp
  40145d:	48 89 e5             	mov    %rsp,%rbp
  401460:	89 7d cc             	mov    %edi,-0x34(%rbp)
  401463:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  40146a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  401471:	eb 19                	jmp    40148c <scramble+0x30>
  401473:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401476:	69 c0 b9 bf 00 00    	imul   $0xbfb9,%eax,%eax
  40147c:	89 c2                	mov    %eax,%edx
  40147e:	03 55 cc             	add    -0x34(%rbp),%edx
  401481:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401484:	89 54 85 d0          	mov    %edx,-0x30(%rbp,%rax,4)
  401488:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  40148c:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  401490:	76 e1                	jbe    401473 <scramble+0x17>
  401492:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401495:	69 c0 18 76 00 00    	imul   $0x7618,%eax,%eax
  40149b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40149e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4014a1:	69 c0 ac 7a 00 00    	imul   $0x7aac,%eax,%eax
  4014a7:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4014aa:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4014ad:	69 c0 f6 7d 00 00    	imul   $0x7df6,%eax,%eax
  4014b3:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4014b6:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4014b9:	69 c0 8a 5f 00 00    	imul   $0x5f8a,%eax,%eax
  4014bf:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4014c2:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4014c5:	69 c0 8f fc 00 00    	imul   $0xfc8f,%eax,%eax
  4014cb:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4014ce:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4014d1:	69 c0 e5 e4 00 00    	imul   $0xe4e5,%eax,%eax
  4014d7:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4014da:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4014dd:	69 c0 02 5b 00 00    	imul   $0x5b02,%eax,%eax
  4014e3:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4014e6:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4014e9:	69 c0 00 2e 00 00    	imul   $0x2e00,%eax,%eax
  4014ef:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4014f2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4014f5:	69 c0 77 1a 00 00    	imul   $0x1a77,%eax,%eax
  4014fb:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4014fe:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401501:	69 c0 bf f3 00 00    	imul   $0xf3bf,%eax,%eax
  401507:	89 45 d0             	mov    %eax,-0x30(%rbp)
  40150a:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40150d:	69 c0 ec 1d 00 00    	imul   $0x1dec,%eax,%eax
  401513:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401516:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401519:	69 c0 2d a3 00 00    	imul   $0xa32d,%eax,%eax
  40151f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401522:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401525:	69 c0 dc 18 00 00    	imul   $0x18dc,%eax,%eax
  40152b:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40152e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401531:	69 c0 f5 14 00 00    	imul   $0x14f5,%eax,%eax
  401537:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40153a:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40153d:	69 c0 57 aa 00 00    	imul   $0xaa57,%eax,%eax
  401543:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401546:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401549:	69 c0 d8 89 00 00    	imul   $0x89d8,%eax,%eax
  40154f:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401552:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401555:	69 c0 e4 f1 00 00    	imul   $0xf1e4,%eax,%eax
  40155b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40155e:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401561:	69 c0 e4 29 00 00    	imul   $0x29e4,%eax,%eax
  401567:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40156a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40156d:	69 c0 88 d0 00 00    	imul   $0xd088,%eax,%eax
  401573:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401576:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401579:	69 c0 2d 3f 00 00    	imul   $0x3f2d,%eax,%eax
  40157f:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401582:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401585:	69 c0 1a 0c 00 00    	imul   $0xc1a,%eax,%eax
  40158b:	89 45 d8             	mov    %eax,-0x28(%rbp)
  40158e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401591:	69 c0 8d b7 00 00    	imul   $0xb78d,%eax,%eax
  401597:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40159a:	8b 45 f0             	mov    -0x10(%rbp),%eax
  40159d:	69 c0 eb 23 00 00    	imul   $0x23eb,%eax,%eax
  4015a3:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4015a6:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4015a9:	69 c0 a9 05 00 00    	imul   $0x5a9,%eax,%eax
  4015af:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4015b2:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4015b5:	69 c0 c6 94 00 00    	imul   $0x94c6,%eax,%eax
  4015bb:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4015be:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4015c1:	69 c0 00 43 00 00    	imul   $0x4300,%eax,%eax
  4015c7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4015ca:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4015cd:	69 c0 46 9e 00 00    	imul   $0x9e46,%eax,%eax
  4015d3:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4015d6:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4015d9:	69 c0 06 92 00 00    	imul   $0x9206,%eax,%eax
  4015df:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4015e2:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4015e5:	69 c0 61 0b 00 00    	imul   $0xb61,%eax,%eax
  4015eb:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4015ee:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4015f1:	69 c0 41 81 00 00    	imul   $0x8141,%eax,%eax
  4015f7:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4015fa:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4015fd:	69 c0 ae ca 00 00    	imul   $0xcaae,%eax,%eax
  401603:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401606:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401609:	69 c0 27 d6 00 00    	imul   $0xd627,%eax,%eax
  40160f:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401612:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401615:	69 c0 9f 0f 00 00    	imul   $0xf9f,%eax,%eax
  40161b:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40161e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401621:	69 c0 6d 2c 00 00    	imul   $0x2c6d,%eax,%eax
  401627:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40162a:	8b 45 e8             	mov    -0x18(%rbp),%eax
  40162d:	69 c0 7b 89 00 00    	imul   $0x897b,%eax,%eax
  401633:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401636:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401639:	69 c0 3f ad 00 00    	imul   $0xad3f,%eax,%eax
  40163f:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401642:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401645:	69 c0 ac 8f 00 00    	imul   $0x8fac,%eax,%eax
  40164b:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40164e:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401651:	69 c0 b1 fc 00 00    	imul   $0xfcb1,%eax,%eax
  401657:	89 45 ec             	mov    %eax,-0x14(%rbp)
  40165a:	8b 45 d0             	mov    -0x30(%rbp),%eax
  40165d:	69 c0 5b 4a 00 00    	imul   $0x4a5b,%eax,%eax
  401663:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401666:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401669:	69 c0 fa f1 00 00    	imul   $0xf1fa,%eax,%eax
  40166f:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401672:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401675:	69 c0 c2 fb 00 00    	imul   $0xfbc2,%eax,%eax
  40167b:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40167e:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401681:	69 c0 d4 91 00 00    	imul   $0x91d4,%eax,%eax
  401687:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40168a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40168d:	69 c0 28 1b 00 00    	imul   $0x1b28,%eax,%eax
  401693:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401696:	8b 45 ec             	mov    -0x14(%rbp),%eax
  401699:	69 c0 2b 51 00 00    	imul   $0x512b,%eax,%eax
  40169f:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4016a2:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4016a5:	69 c0 d7 ca 00 00    	imul   $0xcad7,%eax,%eax
  4016ab:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4016ae:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4016b1:	69 c0 42 dc 00 00    	imul   $0xdc42,%eax,%eax
  4016b7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4016ba:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4016bd:	69 c0 86 dd 00 00    	imul   $0xdd86,%eax,%eax
  4016c3:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4016c6:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4016c9:	69 c0 18 52 00 00    	imul   $0x5218,%eax,%eax
  4016cf:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4016d2:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  4016d5:	69 c0 75 b2 00 00    	imul   $0xb275,%eax,%eax
  4016db:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  4016de:	8b 45 f0             	mov    -0x10(%rbp),%eax
  4016e1:	69 c0 4d cd 00 00    	imul   $0xcd4d,%eax,%eax
  4016e7:	89 45 f0             	mov    %eax,-0x10(%rbp)
  4016ea:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4016ed:	69 c0 1f ea 00 00    	imul   $0xea1f,%eax,%eax
  4016f3:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4016f6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4016f9:	69 c0 85 d1 00 00    	imul   $0xd185,%eax,%eax
  4016ff:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401702:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401705:	69 c0 59 df 00 00    	imul   $0xdf59,%eax,%eax
  40170b:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40170e:	8b 45 f0             	mov    -0x10(%rbp),%eax
  401711:	69 c0 63 2d 00 00    	imul   $0x2d63,%eax,%eax
  401717:	89 45 f0             	mov    %eax,-0x10(%rbp)
  40171a:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  40171d:	69 c0 91 d0 00 00    	imul   $0xd091,%eax,%eax
  401723:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  401726:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401729:	69 c0 d6 08 00 00    	imul   $0x8d6,%eax,%eax
  40172f:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401732:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401735:	69 c0 57 54 00 00    	imul   $0x5457,%eax,%eax
  40173b:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40173e:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401741:	69 c0 5c 66 00 00    	imul   $0x665c,%eax,%eax
  401747:	89 45 dc             	mov    %eax,-0x24(%rbp)
  40174a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40174d:	69 c0 85 be 00 00    	imul   $0xbe85,%eax,%eax
  401753:	89 45 f4             	mov    %eax,-0xc(%rbp)
  401756:	8b 45 d8             	mov    -0x28(%rbp),%eax
  401759:	69 c0 09 96 00 00    	imul   $0x9609,%eax,%eax
  40175f:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401762:	8b 45 f4             	mov    -0xc(%rbp),%eax
  401765:	69 c0 f4 89 00 00    	imul   $0x89f4,%eax,%eax
  40176b:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40176e:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401771:	69 c0 e2 1e 00 00    	imul   $0x1ee2,%eax,%eax
  401777:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40177a:	8b 45 e0             	mov    -0x20(%rbp),%eax
  40177d:	69 c0 b4 24 00 00    	imul   $0x24b4,%eax,%eax
  401783:	89 45 e0             	mov    %eax,-0x20(%rbp)
  401786:	8b 45 d0             	mov    -0x30(%rbp),%eax
  401789:	69 c0 a0 54 00 00    	imul   $0x54a0,%eax,%eax
  40178f:	89 45 d0             	mov    %eax,-0x30(%rbp)
  401792:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401795:	69 c0 7f ef 00 00    	imul   $0xef7f,%eax,%eax
  40179b:	89 45 dc             	mov    %eax,-0x24(%rbp)
  40179e:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4017a1:	69 c0 1a 13 00 00    	imul   $0x131a,%eax,%eax
  4017a7:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4017aa:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4017ad:	69 c0 79 9c 00 00    	imul   $0x9c79,%eax,%eax
  4017b3:	89 45 d8             	mov    %eax,-0x28(%rbp)
  4017b6:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017b9:	69 c0 69 53 00 00    	imul   $0x5369,%eax,%eax
  4017bf:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4017c2:	8b 45 e0             	mov    -0x20(%rbp),%eax
  4017c5:	69 c0 d7 b2 00 00    	imul   $0xb2d7,%eax,%eax
  4017cb:	89 45 e0             	mov    %eax,-0x20(%rbp)
  4017ce:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4017d1:	69 c0 87 a5 00 00    	imul   $0xa587,%eax,%eax
  4017d7:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4017da:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4017dd:	69 c0 29 a0 00 00    	imul   $0xa029,%eax,%eax
  4017e3:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4017e6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4017e9:	69 c0 bc 4f 00 00    	imul   $0x4fbc,%eax,%eax
  4017ef:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4017f2:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4017f5:	69 c0 08 49 00 00    	imul   $0x4908,%eax,%eax
  4017fb:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4017fe:	8b 45 d4             	mov    -0x2c(%rbp),%eax
  401801:	69 c0 00 64 00 00    	imul   $0x6400,%eax,%eax
  401807:	89 45 d4             	mov    %eax,-0x2c(%rbp)
  40180a:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  40180d:	69 c0 a0 6d 00 00    	imul   $0x6da0,%eax,%eax
  401813:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  401816:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401819:	69 c0 ea 90 00 00    	imul   $0x90ea,%eax,%eax
  40181f:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401822:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401825:	69 c0 54 6c 00 00    	imul   $0x6c54,%eax,%eax
  40182b:	89 45 e8             	mov    %eax,-0x18(%rbp)
  40182e:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401831:	69 c0 0f 5f 00 00    	imul   $0x5f0f,%eax,%eax
  401837:	89 45 dc             	mov    %eax,-0x24(%rbp)
  40183a:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40183d:	69 c0 c6 20 00 00    	imul   $0x20c6,%eax,%eax
  401843:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401846:	8b 45 dc             	mov    -0x24(%rbp),%eax
  401849:	69 c0 33 68 00 00    	imul   $0x6833,%eax,%eax
  40184f:	89 45 dc             	mov    %eax,-0x24(%rbp)
  401852:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401855:	69 c0 9c d5 00 00    	imul   $0xd59c,%eax,%eax
  40185b:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40185e:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  401861:	69 c0 e3 e9 00 00    	imul   $0xe9e3,%eax,%eax
  401867:	89 45 e4             	mov    %eax,-0x1c(%rbp)
  40186a:	8b 45 d8             	mov    -0x28(%rbp),%eax
  40186d:	69 c0 ed 5f 00 00    	imul   $0x5fed,%eax,%eax
  401873:	89 45 d8             	mov    %eax,-0x28(%rbp)
  401876:	8b 45 e8             	mov    -0x18(%rbp),%eax
  401879:	69 c0 e8 ed 00 00    	imul   $0xede8,%eax,%eax
  40187f:	89 45 e8             	mov    %eax,-0x18(%rbp)
  401882:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401885:	69 c0 19 be 00 00    	imul   $0xbe19,%eax,%eax
  40188b:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40188e:	8b 45 e0             	mov    -0x20(%rbp),%eax
  401891:	69 c0 2d 96 00 00    	imul   $0x962d,%eax,%eax
  401897:	89 45 e0             	mov    %eax,-0x20(%rbp)
  40189a:	8b 45 f4             	mov    -0xc(%rbp),%eax
  40189d:	69 c0 cd 41 00 00    	imul   $0x41cd,%eax,%eax
  4018a3:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4018a6:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4018a9:	69 c0 c3 52 00 00    	imul   $0x52c3,%eax,%eax
  4018af:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4018b2:	8b 45 e8             	mov    -0x18(%rbp),%eax
  4018b5:	69 c0 02 9c 00 00    	imul   $0x9c02,%eax,%eax
  4018bb:	89 45 e8             	mov    %eax,-0x18(%rbp)
  4018be:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4018c1:	69 c0 63 92 00 00    	imul   $0x9263,%eax,%eax
  4018c7:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4018ca:	8b 45 f4             	mov    -0xc(%rbp),%eax
  4018cd:	69 c0 cd b0 00 00    	imul   $0xb0cd,%eax,%eax
  4018d3:	89 45 f4             	mov    %eax,-0xc(%rbp)
  4018d6:	8b 45 d0             	mov    -0x30(%rbp),%eax
  4018d9:	69 c0 37 01 00 00    	imul   $0x137,%eax,%eax
  4018df:	89 45 d0             	mov    %eax,-0x30(%rbp)
  4018e2:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  4018e9:	eb 0e                	jmp    4018f9 <scramble+0x49d>
  4018eb:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4018ee:	8b 44 85 d0          	mov    -0x30(%rbp,%rax,4),%eax
  4018f2:	01 45 f8             	add    %eax,-0x8(%rbp)
  4018f5:	83 45 fc 01          	addl   $0x1,-0x4(%rbp)
  4018f9:	83 7d fc 09          	cmpl   $0x9,-0x4(%rbp)
  4018fd:	76 ec                	jbe    4018eb <scramble+0x48f>
  4018ff:	8b 45 f8             	mov    -0x8(%rbp),%eax
  401902:	5d                   	pop    %rbp
  401903:	c3                   	retq   

0000000000401904 <getbuf>:
  401904:	55                   	push   %rbp
  401905:	48 89 e5             	mov    %rsp,%rbp
  401908:	48 83 ec 30          	sub    $0x30,%rsp
  40190c:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  401910:	48 89 c7             	mov    %rax,%rdi
  401913:	e8 34 04 00 00       	callq  401d4c <Gets>
  401918:	b8 01 00 00 00       	mov    $0x1,%eax
  40191d:	c9                   	leaveq 
  40191e:	c3                   	retq   
  40191f:	90                   	nop

0000000000401920 <touch1>:
  401920:	55                   	push   %rbp
  401921:	48 89 e5             	mov    %rsp,%rbp
  401924:	c7 05 be 3b 20 00 01 	movl   $0x1,0x203bbe(%rip)        # 6054ec <vlevel>
  40192b:	00 00 00 
  40192e:	bf b8 37 40 00       	mov    $0x4037b8,%edi
  401933:	e8 88 f3 ff ff       	callq  400cc0 <puts@plt>
  401938:	bf 01 00 00 00       	mov    $0x1,%edi
  40193d:	e8 0a 02 00 00       	callq  401b4c <validate>
  401942:	bf 00 00 00 00       	mov    $0x0,%edi
  401947:	e8 24 f5 ff ff       	callq  400e70 <exit@plt>

000000000040194c <touch2>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 10          	sub    $0x10,%rsp
  401954:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401957:	c7 05 8b 3b 20 00 02 	movl   $0x2,0x203b8b(%rip)        # 6054ec <vlevel>
  40195e:	00 00 00 
  401961:	8b 05 7d 3b 20 00    	mov    0x203b7d(%rip),%eax        # 6054e4 <cookie>
  401967:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  40196a:	75 23                	jne    40198f <touch2+0x43>
  40196c:	b8 d8 37 40 00       	mov    $0x4037d8,%eax
  401971:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401974:	89 d6                	mov    %edx,%esi
  401976:	48 89 c7             	mov    %rax,%rdi
  401979:	b8 00 00 00 00       	mov    $0x0,%eax
  40197e:	e8 8d f3 ff ff       	callq  400d10 <printf@plt>
  401983:	bf 02 00 00 00       	mov    $0x2,%edi
  401988:	e8 bf 01 00 00       	callq  401b4c <validate>
  40198d:	eb 21                	jmp    4019b0 <touch2+0x64>
  40198f:	b8 00 38 40 00       	mov    $0x403800,%eax
  401994:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401997:	89 d6                	mov    %edx,%esi
  401999:	48 89 c7             	mov    %rax,%rdi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 6a f3 ff ff       	callq  400d10 <printf@plt>
  4019a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4019ab:	e8 bc 02 00 00       	callq  401c6c <fail>
  4019b0:	bf 00 00 00 00       	mov    $0x0,%edi
  4019b5:	e8 b6 f4 ff ff       	callq  400e70 <exit@plt>

00000000004019ba <hexmatch>:
  4019ba:	55                   	push   %rbp
  4019bb:	48 89 e5             	mov    %rsp,%rbp
  4019be:	48 81 ec a0 00 00 00 	sub    $0xa0,%rsp
  4019c5:	89 bd 6c ff ff ff    	mov    %edi,-0x94(%rbp)
  4019cb:	48 89 b5 60 ff ff ff 	mov    %rsi,-0xa0(%rbp)
  4019d2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4019d9:	00 00 
  4019db:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4019df:	31 c0                	xor    %eax,%eax
  4019e1:	e8 da f3 ff ff       	callq  400dc0 <random@plt>
  4019e6:	48 89 c1             	mov    %rax,%rcx
  4019e9:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  4019f0:	0a d7 a3 
  4019f3:	48 89 c8             	mov    %rcx,%rax
  4019f6:	48 f7 ea             	imul   %rdx
  4019f9:	48 8d 04 0a          	lea    (%rdx,%rcx,1),%rax
  4019fd:	48 89 c2             	mov    %rax,%rdx
  401a00:	48 c1 fa 06          	sar    $0x6,%rdx
  401a04:	48 89 c8             	mov    %rcx,%rax
  401a07:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a0b:	48 29 c2             	sub    %rax,%rdx
  401a0e:	48 89 d0             	mov    %rdx,%rax
  401a11:	48 c1 e0 02          	shl    $0x2,%rax
  401a15:	48 01 d0             	add    %rdx,%rax
  401a18:	48 8d 14 85 00 00 00 	lea    0x0(,%rax,4),%rdx
  401a1f:	00 
  401a20:	48 01 d0             	add    %rdx,%rax
  401a23:	48 c1 e0 02          	shl    $0x2,%rax
  401a27:	48 89 ca             	mov    %rcx,%rdx
  401a2a:	48 29 c2             	sub    %rax,%rdx
  401a2d:	48 89 d0             	mov    %rdx,%rax
  401a30:	48 8d 55 80          	lea    -0x80(%rbp),%rdx
  401a34:	48 01 d0             	add    %rdx,%rax
  401a37:	48 89 85 78 ff ff ff 	mov    %rax,-0x88(%rbp)
  401a3e:	b9 24 38 40 00       	mov    $0x403824,%ecx
  401a43:	8b 95 6c ff ff ff    	mov    -0x94(%rbp),%edx
  401a49:	48 8b 85 78 ff ff ff 	mov    -0x88(%rbp),%rax
  401a50:	48 89 ce             	mov    %rcx,%rsi
  401a53:	48 89 c7             	mov    %rax,%rdi
  401a56:	b8 00 00 00 00       	mov    $0x0,%eax
  401a5b:	e8 00 f4 ff ff       	callq  400e60 <sprintf@plt>
  401a60:	48 8b 8d 78 ff ff ff 	mov    -0x88(%rbp),%rcx
  401a67:	48 8b 85 60 ff ff ff 	mov    -0xa0(%rbp),%rax
  401a6e:	ba 09 00 00 00       	mov    $0x9,%edx
  401a73:	48 89 ce             	mov    %rcx,%rsi
  401a76:	48 89 c7             	mov    %rax,%rdi
  401a79:	e8 22 f2 ff ff       	callq  400ca0 <strncmp@plt>
  401a7e:	85 c0                	test   %eax,%eax
  401a80:	0f 94 c0             	sete   %al
  401a83:	0f b6 c0             	movzbl %al,%eax
  401a86:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401a8a:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  401a91:	00 00 
  401a93:	74 05                	je     401a9a <hexmatch+0xe0>
  401a95:	e8 46 f2 ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  401a9a:	c9                   	leaveq 
  401a9b:	c3                   	retq   

0000000000401a9c <touch3>:
  401a9c:	55                   	push   %rbp
  401a9d:	48 89 e5             	mov    %rsp,%rbp
  401aa0:	48 83 ec 10          	sub    $0x10,%rsp
  401aa4:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401aa8:	c7 05 3a 3a 20 00 03 	movl   $0x3,0x203a3a(%rip)        # 6054ec <vlevel>
  401aaf:	00 00 00 
  401ab2:	8b 05 2c 3a 20 00    	mov    0x203a2c(%rip),%eax        # 6054e4 <cookie>
  401ab8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401abc:	48 89 d6             	mov    %rdx,%rsi
  401abf:	89 c7                	mov    %eax,%edi
  401ac1:	e8 f4 fe ff ff       	callq  4019ba <hexmatch>
  401ac6:	85 c0                	test   %eax,%eax
  401ac8:	74 25                	je     401aef <touch3+0x53>
  401aca:	b8 30 38 40 00       	mov    $0x403830,%eax
  401acf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401ad3:	48 89 d6             	mov    %rdx,%rsi
  401ad6:	48 89 c7             	mov    %rax,%rdi
  401ad9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ade:	e8 2d f2 ff ff       	callq  400d10 <printf@plt>
  401ae3:	bf 03 00 00 00       	mov    $0x3,%edi
  401ae8:	e8 5f 00 00 00       	callq  401b4c <validate>
  401aed:	eb 23                	jmp    401b12 <touch3+0x76>
  401aef:	b8 58 38 40 00       	mov    $0x403858,%eax
  401af4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401af8:	48 89 d6             	mov    %rdx,%rsi
  401afb:	48 89 c7             	mov    %rax,%rdi
  401afe:	b8 00 00 00 00       	mov    $0x0,%eax
  401b03:	e8 08 f2 ff ff       	callq  400d10 <printf@plt>
  401b08:	bf 03 00 00 00       	mov    $0x3,%edi
  401b0d:	e8 5a 01 00 00       	callq  401c6c <fail>
  401b12:	bf 00 00 00 00       	mov    $0x0,%edi
  401b17:	e8 54 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401b1c <test>:
  401b1c:	55                   	push   %rbp
  401b1d:	48 89 e5             	mov    %rsp,%rbp
  401b20:	48 83 ec 10          	sub    $0x10,%rsp
  401b24:	b8 00 00 00 00       	mov    $0x0,%eax
  401b29:	e8 d6 fd ff ff       	callq  401904 <getbuf>
  401b2e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401b31:	b8 80 38 40 00       	mov    $0x403880,%eax
  401b36:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401b39:	89 d6                	mov    %edx,%esi
  401b3b:	48 89 c7             	mov    %rax,%rdi
  401b3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b43:	e8 c8 f1 ff ff       	callq  400d10 <printf@plt>
  401b48:	c9                   	leaveq 
  401b49:	c3                   	retq   
  401b4a:	90                   	nop
  401b4b:	90                   	nop

0000000000401b4c <validate>:
  401b4c:	55                   	push   %rbp
  401b4d:	48 89 e5             	mov    %rsp,%rbp
  401b50:	48 83 ec 10          	sub    $0x10,%rsp
  401b54:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401b57:	8b 05 83 39 20 00    	mov    0x203983(%rip),%eax        # 6054e0 <is_checker>
  401b5d:	85 c0                	test   %eax,%eax
  401b5f:	74 7e                	je     401bdf <validate+0x93>
  401b61:	8b 05 85 39 20 00    	mov    0x203985(%rip),%eax        # 6054ec <vlevel>
  401b67:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401b6a:	74 19                	je     401b85 <validate+0x39>
  401b6c:	bf a8 38 40 00       	mov    $0x4038a8,%edi
  401b71:	e8 4a f1 ff ff       	callq  400cc0 <puts@plt>
  401b76:	b8 00 00 00 00       	mov    $0x0,%eax
  401b7b:	e8 b7 00 00 00       	callq  401c37 <check_fail>
  401b80:	e9 b0 00 00 00       	jmpq   401c35 <validate+0xe9>
  401b85:	8b 05 65 39 20 00    	mov    0x203965(%rip),%eax        # 6054f0 <check_level>
  401b8b:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401b8e:	74 29                	je     401bb9 <validate+0x6d>
  401b90:	8b 0d 5a 39 20 00    	mov    0x20395a(%rip),%ecx        # 6054f0 <check_level>
  401b96:	b8 c8 38 40 00       	mov    $0x4038c8,%eax
  401b9b:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401b9e:	89 ce                	mov    %ecx,%esi
  401ba0:	48 89 c7             	mov    %rax,%rdi
  401ba3:	b8 00 00 00 00       	mov    $0x0,%eax
  401ba8:	e8 63 f1 ff ff       	callq  400d10 <printf@plt>
  401bad:	b8 00 00 00 00       	mov    $0x0,%eax
  401bb2:	e8 80 00 00 00       	callq  401c37 <check_fail>
  401bb7:	eb 7c                	jmp    401c35 <validate+0xe9>
  401bb9:	0f b6 05 64 45 20 00 	movzbl 0x204564(%rip),%eax        # 606124 <target_prefix>
  401bc0:	0f be f0             	movsbl %al,%esi
  401bc3:	b8 ec 38 40 00       	mov    $0x4038ec,%eax
  401bc8:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401bcb:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401bd0:	48 89 c7             	mov    %rax,%rdi
  401bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd8:	e8 33 f1 ff ff       	callq  400d10 <printf@plt>
  401bdd:	eb 56                	jmp    401c35 <validate+0xe9>
  401bdf:	8b 05 07 39 20 00    	mov    0x203907(%rip),%eax        # 6054ec <vlevel>
  401be5:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401be8:	74 1b                	je     401c05 <validate+0xb9>
  401bea:	bf a8 38 40 00       	mov    $0x4038a8,%edi
  401bef:	e8 cc f0 ff ff       	callq  400cc0 <puts@plt>
  401bf4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401bf7:	89 c6                	mov    %eax,%esi
  401bf9:	bf 00 00 00 00       	mov    $0x0,%edi
  401bfe:	e8 c0 01 00 00       	callq  401dc3 <notify_server>
  401c03:	eb 30                	jmp    401c35 <validate+0xe9>
  401c05:	0f b6 05 18 45 20 00 	movzbl 0x204518(%rip),%eax        # 606124 <target_prefix>
  401c0c:	0f be d0             	movsbl %al,%edx
  401c0f:	b8 08 39 40 00       	mov    $0x403908,%eax
  401c14:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401c17:	89 ce                	mov    %ecx,%esi
  401c19:	48 89 c7             	mov    %rax,%rdi
  401c1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c21:	e8 ea f0 ff ff       	callq  400d10 <printf@plt>
  401c26:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401c29:	89 c6                	mov    %eax,%esi
  401c2b:	bf 01 00 00 00       	mov    $0x1,%edi
  401c30:	e8 8e 01 00 00       	callq  401dc3 <notify_server>
  401c35:	c9                   	leaveq 
  401c36:	c3                   	retq   

0000000000401c37 <check_fail>:
  401c37:	55                   	push   %rbp
  401c38:	48 89 e5             	mov    %rsp,%rbp
  401c3b:	8b 15 af 38 20 00    	mov    0x2038af(%rip),%edx        # 6054f0 <check_level>
  401c41:	0f b6 05 dc 44 20 00 	movzbl 0x2044dc(%rip),%eax        # 606124 <target_prefix>
  401c48:	0f be f0             	movsbl %al,%esi
  401c4b:	b8 3a 39 40 00       	mov    $0x40393a,%eax
  401c50:	b9 20 55 60 00       	mov    $0x605520,%ecx
  401c55:	48 89 c7             	mov    %rax,%rdi
  401c58:	b8 00 00 00 00       	mov    $0x0,%eax
  401c5d:	e8 ae f0 ff ff       	callq  400d10 <printf@plt>
  401c62:	bf 01 00 00 00       	mov    $0x1,%edi
  401c67:	e8 04 f2 ff ff       	callq  400e70 <exit@plt>

0000000000401c6c <fail>:
  401c6c:	55                   	push   %rbp
  401c6d:	48 89 e5             	mov    %rsp,%rbp
  401c70:	48 83 ec 10          	sub    $0x10,%rsp
  401c74:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401c77:	8b 05 63 38 20 00    	mov    0x203863(%rip),%eax        # 6054e0 <is_checker>
  401c7d:	85 c0                	test   %eax,%eax
  401c7f:	74 0c                	je     401c8d <fail+0x21>
  401c81:	b8 00 00 00 00       	mov    $0x0,%eax
  401c86:	e8 ac ff ff ff       	callq  401c37 <check_fail>
  401c8b:	eb 0f                	jmp    401c9c <fail+0x30>
  401c8d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401c90:	89 c6                	mov    %eax,%esi
  401c92:	bf 00 00 00 00       	mov    $0x0,%edi
  401c97:	e8 27 01 00 00       	callq  401dc3 <notify_server>
  401c9c:	c9                   	leaveq 
  401c9d:	c3                   	retq   

0000000000401c9e <save_char>:
  401c9e:	55                   	push   %rbp
  401c9f:	48 89 e5             	mov    %rsp,%rbp
  401ca2:	89 f8                	mov    %edi,%eax
  401ca4:	88 45 fc             	mov    %al,-0x4(%rbp)
  401ca7:	8b 05 63 38 20 00    	mov    0x203863(%rip),%eax        # 605510 <gets_cnt>
  401cad:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401cb2:	7f 7b                	jg     401d2f <save_char+0x91>
  401cb4:	8b 15 56 38 20 00    	mov    0x203856(%rip),%edx        # 605510 <gets_cnt>
  401cba:	89 d0                	mov    %edx,%eax
  401cbc:	01 c0                	add    %eax,%eax
  401cbe:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
  401cc1:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  401cc5:	c0 e8 04             	shr    $0x4,%al
  401cc8:	0f b6 c0             	movzbl %al,%eax
  401ccb:	83 e0 0f             	and    $0xf,%eax
  401cce:	48 98                	cltq   
  401cd0:	0f b6 90 90 54 60 00 	movzbl 0x605490(%rax),%edx
  401cd7:	48 63 c1             	movslq %ecx,%rax
  401cda:	88 90 20 55 60 00    	mov    %dl,0x605520(%rax)
  401ce0:	8b 15 2a 38 20 00    	mov    0x20382a(%rip),%edx        # 605510 <gets_cnt>
  401ce6:	89 d0                	mov    %edx,%eax
  401ce8:	01 c0                	add    %eax,%eax
  401cea:	01 d0                	add    %edx,%eax
  401cec:	8d 48 01             	lea    0x1(%rax),%ecx
  401cef:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  401cf3:	83 e0 0f             	and    $0xf,%eax
  401cf6:	48 98                	cltq   
  401cf8:	0f b6 90 90 54 60 00 	movzbl 0x605490(%rax),%edx
  401cff:	48 63 c1             	movslq %ecx,%rax
  401d02:	88 90 20 55 60 00    	mov    %dl,0x605520(%rax)
  401d08:	8b 15 02 38 20 00    	mov    0x203802(%rip),%edx        # 605510 <gets_cnt>
  401d0e:	89 d0                	mov    %edx,%eax
  401d10:	01 c0                	add    %eax,%eax
  401d12:	01 d0                	add    %edx,%eax
  401d14:	83 c0 02             	add    $0x2,%eax
  401d17:	48 98                	cltq   
  401d19:	c6 80 20 55 60 00 20 	movb   $0x20,0x605520(%rax)
  401d20:	8b 05 ea 37 20 00    	mov    0x2037ea(%rip),%eax        # 605510 <gets_cnt>
  401d26:	83 c0 01             	add    $0x1,%eax
  401d29:	89 05 e1 37 20 00    	mov    %eax,0x2037e1(%rip)        # 605510 <gets_cnt>
  401d2f:	5d                   	pop    %rbp
  401d30:	c3                   	retq   

0000000000401d31 <save_term>:
  401d31:	55                   	push   %rbp
  401d32:	48 89 e5             	mov    %rsp,%rbp
  401d35:	8b 15 d5 37 20 00    	mov    0x2037d5(%rip),%edx        # 605510 <gets_cnt>
  401d3b:	89 d0                	mov    %edx,%eax
  401d3d:	01 c0                	add    %eax,%eax
  401d3f:	01 d0                	add    %edx,%eax
  401d41:	48 98                	cltq   
  401d43:	c6 80 20 55 60 00 00 	movb   $0x0,0x605520(%rax)
  401d4a:	5d                   	pop    %rbp
  401d4b:	c3                   	retq   

0000000000401d4c <Gets>:
  401d4c:	55                   	push   %rbp
  401d4d:	48 89 e5             	mov    %rsp,%rbp
  401d50:	48 83 ec 20          	sub    $0x20,%rsp
  401d54:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  401d58:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401d5c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  401d60:	c7 05 a6 37 20 00 00 	movl   $0x0,0x2037a6(%rip)        # 605510 <gets_cnt>
  401d67:	00 00 00 
  401d6a:	eb 1d                	jmp    401d89 <Gets+0x3d>
  401d6c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401d6f:	89 c2                	mov    %eax,%edx
  401d71:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401d75:	88 10                	mov    %dl,(%rax)
  401d77:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  401d7c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401d7f:	0f b6 c0             	movzbl %al,%eax
  401d82:	89 c7                	mov    %eax,%edi
  401d84:	e8 15 ff ff ff       	callq  401c9e <save_char>
  401d89:	48 8b 05 68 37 20 00 	mov    0x203768(%rip),%rax        # 6054f8 <infile>
  401d90:	48 89 c7             	mov    %rax,%rdi
  401d93:	e8 38 f0 ff ff       	callq  400dd0 <_IO_getc@plt>
  401d98:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401d9b:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  401d9f:	74 06                	je     401da7 <Gets+0x5b>
  401da1:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  401da5:	75 c5                	jne    401d6c <Gets+0x20>
  401da7:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401dab:	c6 00 00             	movb   $0x0,(%rax)
  401dae:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  401db3:	b8 00 00 00 00       	mov    $0x0,%eax
  401db8:	e8 74 ff ff ff       	callq  401d31 <save_term>
  401dbd:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  401dc1:	c9                   	leaveq 
  401dc2:	c3                   	retq   

0000000000401dc3 <notify_server>:
  401dc3:	55                   	push   %rbp
  401dc4:	48 89 e5             	mov    %rsp,%rbp
  401dc7:	48 81 ec 40 40 00 00 	sub    $0x4040,%rsp
  401dce:	89 bd dc bf ff ff    	mov    %edi,-0x4024(%rbp)
  401dd4:	89 b5 d8 bf ff ff    	mov    %esi,-0x4028(%rbp)
  401dda:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401de1:	00 00 
  401de3:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  401de7:	31 c0                	xor    %eax,%eax
  401de9:	8b 05 f1 36 20 00    	mov    0x2036f1(%rip),%eax        # 6054e0 <is_checker>
  401def:	85 c0                	test   %eax,%eax
  401df1:	0f 85 e6 01 00 00    	jne    401fdd <notify_server+0x21a>
  401df7:	8b 05 13 37 20 00    	mov    0x203713(%rip),%eax        # 605510 <gets_cnt>
  401dfd:	83 c0 64             	add    $0x64,%eax
  401e00:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401e05:	7e 1c                	jle    401e23 <notify_server+0x60>
  401e07:	b8 50 39 40 00       	mov    $0x403950,%eax
  401e0c:	48 89 c7             	mov    %rax,%rdi
  401e0f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e14:	e8 f7 ee ff ff       	callq  400d10 <printf@plt>
  401e19:	bf 01 00 00 00       	mov    $0x1,%edi
  401e1e:	e8 4d f0 ff ff       	callq  400e70 <exit@plt>
  401e23:	0f b6 05 fa 42 20 00 	movzbl 0x2042fa(%rip),%eax        # 606124 <target_prefix>
  401e2a:	44 0f be c0          	movsbl %al,%r8d
  401e2e:	8b 05 4c 36 20 00    	mov    0x20364c(%rip),%eax        # 605480 <notify>
  401e34:	85 c0                	test   %eax,%eax
  401e36:	74 08                	je     401e40 <notify_server+0x7d>
  401e38:	8b 15 aa 36 20 00    	mov    0x2036aa(%rip),%edx        # 6054e8 <authkey>
  401e3e:	eb 05                	jmp    401e45 <notify_server+0x82>
  401e40:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401e45:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  401e4c:	74 07                	je     401e55 <notify_server+0x92>
  401e4e:	b8 7b 39 40 00       	mov    $0x40397b,%eax
  401e53:	eb 05                	jmp    401e5a <notify_server+0x97>
  401e55:	b8 80 39 40 00       	mov    $0x403980,%eax
  401e5a:	44 8b 15 0f 36 20 00 	mov    0x20360f(%rip),%r10d        # 605470 <target_id>
  401e61:	be 85 39 40 00       	mov    $0x403985,%esi
  401e66:	48 8d bd f0 bf ff ff 	lea    -0x4010(%rbp),%rdi
  401e6d:	48 c7 44 24 08 20 55 	movq   $0x605520,0x8(%rsp)
  401e74:	60 00 
  401e76:	8b 8d d8 bf ff ff    	mov    -0x4028(%rbp),%ecx
  401e7c:	89 0c 24             	mov    %ecx,(%rsp)
  401e7f:	45 89 c1             	mov    %r8d,%r9d
  401e82:	41 89 d0             	mov    %edx,%r8d
  401e85:	48 89 c1             	mov    %rax,%rcx
  401e88:	44 89 d2             	mov    %r10d,%edx
  401e8b:	b8 00 00 00 00       	mov    $0x0,%eax
  401e90:	e8 cb ef ff ff       	callq  400e60 <sprintf@plt>
  401e95:	8b 05 e5 35 20 00    	mov    0x2035e5(%rip),%eax        # 605480 <notify>
  401e9b:	85 c0                	test   %eax,%eax
  401e9d:	0f 84 9e 00 00 00    	je     401f41 <notify_server+0x17e>
  401ea3:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  401eaa:	0f 84 82 00 00 00    	je     401f32 <notify_server+0x16f>
  401eb0:	48 8b 15 b1 35 20 00 	mov    0x2035b1(%rip),%rdx        # 605468 <lab>
  401eb7:	48 8b 35 a2 35 20 00 	mov    0x2035a2(%rip),%rsi        # 605460 <course>
  401ebe:	48 8b 05 b3 35 20 00 	mov    0x2035b3(%rip),%rax        # 605478 <user_id>
  401ec5:	48 8d bd f0 df ff ff 	lea    -0x2010(%rbp),%rdi
  401ecc:	48 8d 8d f0 bf ff ff 	lea    -0x4010(%rbp),%rcx
  401ed3:	49 89 f9             	mov    %rdi,%r9
  401ed6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401edc:	48 89 c7             	mov    %rax,%rdi
  401edf:	e8 c1 12 00 00       	callq  4031a5 <driver_post>
  401ee4:	89 85 ec bf ff ff    	mov    %eax,-0x4014(%rbp)
  401eea:	83 bd ec bf ff ff 00 	cmpl   $0x0,-0x4014(%rbp)
  401ef1:	79 26                	jns    401f19 <notify_server+0x156>
  401ef3:	b8 a1 39 40 00       	mov    $0x4039a1,%eax
  401ef8:	48 8d 95 f0 df ff ff 	lea    -0x2010(%rbp),%rdx
  401eff:	48 89 d6             	mov    %rdx,%rsi
  401f02:	48 89 c7             	mov    %rax,%rdi
  401f05:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0a:	e8 01 ee ff ff       	callq  400d10 <printf@plt>
  401f0f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f14:	e8 57 ef ff ff       	callq  400e70 <exit@plt>
  401f19:	bf b0 39 40 00       	mov    $0x4039b0,%edi
  401f1e:	e8 9d ed ff ff       	callq  400cc0 <puts@plt>
  401f23:	bf e5 39 40 00       	mov    $0x4039e5,%edi
  401f28:	e8 93 ed ff ff       	callq  400cc0 <puts@plt>
  401f2d:	e9 ac 00 00 00       	jmpq   401fde <notify_server+0x21b>
  401f32:	bf ef 39 40 00       	mov    $0x4039ef,%edi
  401f37:	e8 84 ed ff ff       	callq  400cc0 <puts@plt>
  401f3c:	e9 9d 00 00 00       	jmpq   401fde <notify_server+0x21b>
  401f41:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  401f48:	74 07                	je     401f51 <notify_server+0x18e>
  401f4a:	b8 7b 39 40 00       	mov    $0x40397b,%eax
  401f4f:	eb 05                	jmp    401f56 <notify_server+0x193>
  401f51:	b8 80 39 40 00       	mov    $0x403980,%eax
  401f56:	ba f8 39 40 00       	mov    $0x4039f8,%edx
  401f5b:	48 89 c6             	mov    %rax,%rsi
  401f5e:	48 89 d7             	mov    %rdx,%rdi
  401f61:	b8 00 00 00 00       	mov    $0x0,%eax
  401f66:	e8 a5 ed ff ff       	callq  400d10 <printf@plt>
  401f6b:	48 8b 15 06 35 20 00 	mov    0x203506(%rip),%rdx        # 605478 <user_id>
  401f72:	b8 1e 3a 40 00       	mov    $0x403a1e,%eax
  401f77:	48 89 d6             	mov    %rdx,%rsi
  401f7a:	48 89 c7             	mov    %rax,%rdi
  401f7d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f82:	e8 89 ed ff ff       	callq  400d10 <printf@plt>
  401f87:	48 8b 15 d2 34 20 00 	mov    0x2034d2(%rip),%rdx        # 605460 <course>
  401f8e:	b8 2b 3a 40 00       	mov    $0x403a2b,%eax
  401f93:	48 89 d6             	mov    %rdx,%rsi
  401f96:	48 89 c7             	mov    %rax,%rdi
  401f99:	b8 00 00 00 00       	mov    $0x0,%eax
  401f9e:	e8 6d ed ff ff       	callq  400d10 <printf@plt>
  401fa3:	48 8b 15 be 34 20 00 	mov    0x2034be(%rip),%rdx        # 605468 <lab>
  401faa:	b8 37 3a 40 00       	mov    $0x403a37,%eax
  401faf:	48 89 d6             	mov    %rdx,%rsi
  401fb2:	48 89 c7             	mov    %rax,%rdi
  401fb5:	b8 00 00 00 00       	mov    $0x0,%eax
  401fba:	e8 51 ed ff ff       	callq  400d10 <printf@plt>
  401fbf:	b8 40 3a 40 00       	mov    $0x403a40,%eax
  401fc4:	48 8d 95 f0 bf ff ff 	lea    -0x4010(%rbp),%rdx
  401fcb:	48 89 d6             	mov    %rdx,%rsi
  401fce:	48 89 c7             	mov    %rax,%rdi
  401fd1:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd6:	e8 35 ed ff ff       	callq  400d10 <printf@plt>
  401fdb:	eb 01                	jmp    401fde <notify_server+0x21b>
  401fdd:	90                   	nop
  401fde:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401fe2:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401fe9:	00 00 
  401feb:	74 05                	je     401ff2 <notify_server+0x22f>
  401fed:	e8 ee ec ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  401ff2:	c9                   	leaveq 
  401ff3:	c3                   	retq   

0000000000401ff4 <bushandler>:
  401ff4:	55                   	push   %rbp
  401ff5:	48 89 e5             	mov    %rsp,%rbp
  401ff8:	48 83 ec 10          	sub    $0x10,%rsp
  401ffc:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401fff:	8b 05 db 34 20 00    	mov    0x2034db(%rip),%eax        # 6054e0 <is_checker>
  402005:	85 c0                	test   %eax,%eax
  402007:	74 16                	je     40201f <bushandler+0x2b>
  402009:	bf 4c 3a 40 00       	mov    $0x403a4c,%edi
  40200e:	e8 ad ec ff ff       	callq  400cc0 <puts@plt>
  402013:	b8 00 00 00 00       	mov    $0x0,%eax
  402018:	e8 1a fc ff ff       	callq  401c37 <check_fail>
  40201d:	eb 23                	jmp    402042 <bushandler+0x4e>
  40201f:	bf 58 3a 40 00       	mov    $0x403a58,%edi
  402024:	e8 97 ec ff ff       	callq  400cc0 <puts@plt>
  402029:	bf 78 3a 40 00       	mov    $0x403a78,%edi
  40202e:	e8 8d ec ff ff       	callq  400cc0 <puts@plt>
  402033:	be 00 00 00 00       	mov    $0x0,%esi
  402038:	bf 00 00 00 00       	mov    $0x0,%edi
  40203d:	e8 81 fd ff ff       	callq  401dc3 <notify_server>
  402042:	bf 01 00 00 00       	mov    $0x1,%edi
  402047:	e8 24 ee ff ff       	callq  400e70 <exit@plt>

000000000040204c <seghandler>:
  40204c:	55                   	push   %rbp
  40204d:	48 89 e5             	mov    %rsp,%rbp
  402050:	48 83 ec 10          	sub    $0x10,%rsp
  402054:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402057:	8b 05 83 34 20 00    	mov    0x203483(%rip),%eax        # 6054e0 <is_checker>
  40205d:	85 c0                	test   %eax,%eax
  40205f:	74 16                	je     402077 <seghandler+0x2b>
  402061:	bf 8e 3a 40 00       	mov    $0x403a8e,%edi
  402066:	e8 55 ec ff ff       	callq  400cc0 <puts@plt>
  40206b:	b8 00 00 00 00       	mov    $0x0,%eax
  402070:	e8 c2 fb ff ff       	callq  401c37 <check_fail>
  402075:	eb 23                	jmp    40209a <seghandler+0x4e>
  402077:	bf a8 3a 40 00       	mov    $0x403aa8,%edi
  40207c:	e8 3f ec ff ff       	callq  400cc0 <puts@plt>
  402081:	bf 78 3a 40 00       	mov    $0x403a78,%edi
  402086:	e8 35 ec ff ff       	callq  400cc0 <puts@plt>
  40208b:	be 00 00 00 00       	mov    $0x0,%esi
  402090:	bf 00 00 00 00       	mov    $0x0,%edi
  402095:	e8 29 fd ff ff       	callq  401dc3 <notify_server>
  40209a:	bf 01 00 00 00       	mov    $0x1,%edi
  40209f:	e8 cc ed ff ff       	callq  400e70 <exit@plt>

00000000004020a4 <illegalhandler>:
  4020a4:	55                   	push   %rbp
  4020a5:	48 89 e5             	mov    %rsp,%rbp
  4020a8:	48 83 ec 10          	sub    $0x10,%rsp
  4020ac:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4020af:	8b 05 2b 34 20 00    	mov    0x20342b(%rip),%eax        # 6054e0 <is_checker>
  4020b5:	85 c0                	test   %eax,%eax
  4020b7:	74 16                	je     4020cf <illegalhandler+0x2b>
  4020b9:	bf d0 3a 40 00       	mov    $0x403ad0,%edi
  4020be:	e8 fd eb ff ff       	callq  400cc0 <puts@plt>
  4020c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c8:	e8 6a fb ff ff       	callq  401c37 <check_fail>
  4020cd:	eb 23                	jmp    4020f2 <illegalhandler+0x4e>
  4020cf:	bf e8 3a 40 00       	mov    $0x403ae8,%edi
  4020d4:	e8 e7 eb ff ff       	callq  400cc0 <puts@plt>
  4020d9:	bf 78 3a 40 00       	mov    $0x403a78,%edi
  4020de:	e8 dd eb ff ff       	callq  400cc0 <puts@plt>
  4020e3:	be 00 00 00 00       	mov    $0x0,%esi
  4020e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4020ed:	e8 d1 fc ff ff       	callq  401dc3 <notify_server>
  4020f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4020f7:	e8 74 ed ff ff       	callq  400e70 <exit@plt>

00000000004020fc <sigalrmhandler>:
  4020fc:	55                   	push   %rbp
  4020fd:	48 89 e5             	mov    %rsp,%rbp
  402100:	48 83 ec 10          	sub    $0x10,%rsp
  402104:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402107:	8b 05 d3 33 20 00    	mov    0x2033d3(%rip),%eax        # 6054e0 <is_checker>
  40210d:	85 c0                	test   %eax,%eax
  40210f:	74 16                	je     402127 <sigalrmhandler+0x2b>
  402111:	bf 13 3b 40 00       	mov    $0x403b13,%edi
  402116:	e8 a5 eb ff ff       	callq  400cc0 <puts@plt>
  40211b:	b8 00 00 00 00       	mov    $0x0,%eax
  402120:	e8 12 fb ff ff       	callq  401c37 <check_fail>
  402125:	eb 26                	jmp    40214d <sigalrmhandler+0x51>
  402127:	b8 20 3b 40 00       	mov    $0x403b20,%eax
  40212c:	be 05 00 00 00       	mov    $0x5,%esi
  402131:	48 89 c7             	mov    %rax,%rdi
  402134:	b8 00 00 00 00       	mov    $0x0,%eax
  402139:	e8 d2 eb ff ff       	callq  400d10 <printf@plt>
  40213e:	be 00 00 00 00       	mov    $0x0,%esi
  402143:	bf 00 00 00 00       	mov    $0x0,%edi
  402148:	e8 76 fc ff ff       	callq  401dc3 <notify_server>
  40214d:	bf 01 00 00 00       	mov    $0x1,%edi
  402152:	e8 19 ed ff ff       	callq  400e70 <exit@plt>

0000000000402157 <launch>:
  402157:	55                   	push   %rbp
  402158:	48 89 e5             	mov    %rsp,%rbp
  40215b:	48 83 ec 20          	sub    $0x20,%rsp
  40215f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402163:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402167:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  40216b:	b8 10 00 00 00       	mov    $0x10,%eax
  402170:	48 83 e8 01          	sub    $0x1,%rax
  402174:	48 01 d0             	add    %rdx,%rax
  402177:	48 c7 45 e0 10 00 00 	movq   $0x10,-0x20(%rbp)
  40217e:	00 
  40217f:	ba 00 00 00 00       	mov    $0x0,%edx
  402184:	48 f7 75 e0          	divq   -0x20(%rbp)
  402188:	48 6b c0 10          	imul   $0x10,%rax,%rax
  40218c:	48 29 c4             	sub    %rax,%rsp
  40218f:	48 89 e0             	mov    %rsp,%rax
  402192:	48 83 c0 0f          	add    $0xf,%rax
  402196:	48 c1 e8 04          	shr    $0x4,%rax
  40219a:	48 c1 e0 04          	shl    $0x4,%rax
  40219e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4021a2:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4021a6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4021aa:	be f4 00 00 00       	mov    $0xf4,%esi
  4021af:	48 89 c7             	mov    %rax,%rdi
  4021b2:	e8 69 eb ff ff       	callq  400d20 <memset@plt>
  4021b7:	48 8b 15 3a 33 20 00 	mov    0x20333a(%rip),%rdx        # 6054f8 <infile>
  4021be:	48 8b 05 db 32 20 00 	mov    0x2032db(%rip),%rax        # 6054a0 <__bss_start>
  4021c5:	48 39 c2             	cmp    %rax,%rdx
  4021c8:	75 12                	jne    4021dc <launch+0x85>
  4021ca:	b8 53 3b 40 00       	mov    $0x403b53,%eax
  4021cf:	48 89 c7             	mov    %rax,%rdi
  4021d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d7:	e8 34 eb ff ff       	callq  400d10 <printf@plt>
  4021dc:	c7 05 06 33 20 00 00 	movl   $0x0,0x203306(%rip)        # 6054ec <vlevel>
  4021e3:	00 00 00 
  4021e6:	b8 00 00 00 00       	mov    $0x0,%eax
  4021eb:	e8 2c f9 ff ff       	callq  401b1c <test>
  4021f0:	8b 05 ea 32 20 00    	mov    0x2032ea(%rip),%eax        # 6054e0 <is_checker>
  4021f6:	85 c0                	test   %eax,%eax
  4021f8:	74 16                	je     402210 <launch+0xb9>
  4021fa:	bf 60 3b 40 00       	mov    $0x403b60,%edi
  4021ff:	e8 bc ea ff ff       	callq  400cc0 <puts@plt>
  402204:	b8 00 00 00 00       	mov    $0x0,%eax
  402209:	e8 29 fa ff ff       	callq  401c37 <check_fail>
  40220e:	eb 0a                	jmp    40221a <launch+0xc3>
  402210:	bf 6b 3b 40 00       	mov    $0x403b6b,%edi
  402215:	e8 a6 ea ff ff       	callq  400cc0 <puts@plt>
  40221a:	c9                   	leaveq 
  40221b:	c3                   	retq   

000000000040221c <stable_launch>:
  40221c:	55                   	push   %rbp
  40221d:	48 89 e5             	mov    %rsp,%rbp
  402220:	48 83 ec 20          	sub    $0x20,%rsp
  402224:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402228:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40222c:	48 89 05 cd 32 20 00 	mov    %rax,0x2032cd(%rip)        # 605500 <global_offset>
  402233:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402239:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40223f:	b9 32 01 00 00       	mov    $0x132,%ecx
  402244:	ba 07 00 00 00       	mov    $0x7,%edx
  402249:	be 00 00 10 00       	mov    $0x100000,%esi
  40224e:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402253:	e8 98 ea ff ff       	callq  400cf0 <mmap@plt>
  402258:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40225c:	48 81 7d f8 00 60 58 	cmpq   $0x55586000,-0x8(%rbp)
  402263:	55 
  402264:	74 3c                	je     4022a2 <stable_launch+0x86>
  402266:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40226a:	be 00 00 10 00       	mov    $0x100000,%esi
  40226f:	48 89 c7             	mov    %rax,%rdi
  402272:	e8 79 eb ff ff       	callq  400df0 <munmap@plt>
  402277:	b9 80 3b 40 00       	mov    $0x403b80,%ecx
  40227c:	48 8b 05 2d 32 20 00 	mov    0x20322d(%rip),%rax        # 6054b0 <stderr@@GLIBC_2.2.5>
  402283:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402288:	48 89 ce             	mov    %rcx,%rsi
  40228b:	48 89 c7             	mov    %rax,%rdi
  40228e:	b8 00 00 00 00       	mov    $0x0,%eax
  402293:	e8 f8 ea ff ff       	callq  400d90 <fprintf@plt>
  402298:	bf 01 00 00 00       	mov    $0x1,%edi
  40229d:	e8 ce eb ff ff       	callq  400e70 <exit@plt>
  4022a2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022a6:	48 05 f8 ff 0f 00    	add    $0xffff8,%rax
  4022ac:	48 89 05 75 3e 20 00 	mov    %rax,0x203e75(%rip)        # 606128 <stack_top>
  4022b3:	48 8b 15 6e 3e 20 00 	mov    0x203e6e(%rip),%rdx        # 606128 <stack_top>
  4022ba:	48 89 e0             	mov    %rsp,%rax
  4022bd:	48 89 d4             	mov    %rdx,%rsp
  4022c0:	48 89 c2             	mov    %rax,%rdx
  4022c3:	48 89 15 3e 32 20 00 	mov    %rdx,0x20323e(%rip)        # 605508 <global_save_stack>
  4022ca:	48 8b 05 2f 32 20 00 	mov    0x20322f(%rip),%rax        # 605500 <global_offset>
  4022d1:	48 89 c7             	mov    %rax,%rdi
  4022d4:	e8 7e fe ff ff       	callq  402157 <launch>
  4022d9:	48 8b 05 28 32 20 00 	mov    0x203228(%rip),%rax        # 605508 <global_save_stack>
  4022e0:	48 89 c4             	mov    %rax,%rsp
  4022e3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4022e7:	be 00 00 10 00       	mov    $0x100000,%esi
  4022ec:	48 89 c7             	mov    %rax,%rdi
  4022ef:	e8 fc ea ff ff       	callq  400df0 <munmap@plt>
  4022f4:	c9                   	leaveq 
  4022f5:	c3                   	retq   
  4022f6:	90                   	nop
  4022f7:	90                   	nop

00000000004022f8 <sigalrm_handler>:
  4022f8:	55                   	push   %rbp
  4022f9:	48 89 e5             	mov    %rsp,%rbp
  4022fc:	48 83 ec 10          	sub    $0x10,%rsp
  402300:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402303:	b9 a8 3b 40 00       	mov    $0x403ba8,%ecx
  402308:	48 8b 05 a1 31 20 00 	mov    0x2031a1(%rip),%rax        # 6054b0 <stderr@@GLIBC_2.2.5>
  40230f:	ba 00 00 00 00       	mov    $0x0,%edx
  402314:	48 89 ce             	mov    %rcx,%rsi
  402317:	48 89 c7             	mov    %rax,%rdi
  40231a:	b8 00 00 00 00       	mov    $0x0,%eax
  40231f:	e8 6c ea ff ff       	callq  400d90 <fprintf@plt>
  402324:	bf 01 00 00 00       	mov    $0x1,%edi
  402329:	e8 42 eb ff ff       	callq  400e70 <exit@plt>

000000000040232e <rio_readinitb>:
  40232e:	55                   	push   %rbp
  40232f:	48 89 e5             	mov    %rsp,%rbp
  402332:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  402336:	89 75 f4             	mov    %esi,-0xc(%rbp)
  402339:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40233d:	8b 55 f4             	mov    -0xc(%rbp),%edx
  402340:	89 10                	mov    %edx,(%rax)
  402342:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402346:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  40234d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402351:	48 8d 50 10          	lea    0x10(%rax),%rdx
  402355:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402359:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40235d:	5d                   	pop    %rbp
  40235e:	c3                   	retq   

000000000040235f <rio_read>:
  40235f:	55                   	push   %rbp
  402360:	48 89 e5             	mov    %rsp,%rbp
  402363:	48 83 ec 30          	sub    $0x30,%rsp
  402367:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40236b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40236f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402373:	eb 6e                	jmp    4023e3 <rio_read+0x84>
  402375:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402379:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40237d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402381:	8b 00                	mov    (%rax),%eax
  402383:	ba 00 20 00 00       	mov    $0x2000,%edx
  402388:	48 89 ce             	mov    %rcx,%rsi
  40238b:	89 c7                	mov    %eax,%edi
  40238d:	e8 be e9 ff ff       	callq  400d50 <read@plt>
  402392:	89 c2                	mov    %eax,%edx
  402394:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402398:	89 50 04             	mov    %edx,0x4(%rax)
  40239b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40239f:	8b 40 04             	mov    0x4(%rax),%eax
  4023a2:	85 c0                	test   %eax,%eax
  4023a4:	79 18                	jns    4023be <rio_read+0x5f>
  4023a6:	e8 d5 e8 ff ff       	callq  400c80 <__errno_location@plt>
  4023ab:	8b 00                	mov    (%rax),%eax
  4023ad:	83 f8 04             	cmp    $0x4,%eax
  4023b0:	74 31                	je     4023e3 <rio_read+0x84>
  4023b2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023b9:	e9 a0 00 00 00       	jmpq   40245e <rio_read+0xff>
  4023be:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023c2:	8b 40 04             	mov    0x4(%rax),%eax
  4023c5:	85 c0                	test   %eax,%eax
  4023c7:	75 0a                	jne    4023d3 <rio_read+0x74>
  4023c9:	b8 00 00 00 00       	mov    $0x0,%eax
  4023ce:	e9 8b 00 00 00       	jmpq   40245e <rio_read+0xff>
  4023d3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023d7:	48 8d 50 10          	lea    0x10(%rax),%rdx
  4023db:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023df:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4023e3:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023e7:	8b 40 04             	mov    0x4(%rax),%eax
  4023ea:	85 c0                	test   %eax,%eax
  4023ec:	7e 87                	jle    402375 <rio_read+0x16>
  4023ee:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4023f2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4023f5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4023f9:	8b 40 04             	mov    0x4(%rax),%eax
  4023fc:	89 c0                	mov    %eax,%eax
  4023fe:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  402402:	73 0a                	jae    40240e <rio_read+0xaf>
  402404:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402408:	8b 40 04             	mov    0x4(%rax),%eax
  40240b:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40240e:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402411:	48 63 d0             	movslq %eax,%rdx
  402414:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402418:	48 8b 40 08          	mov    0x8(%rax),%rax
  40241c:	48 89 c1             	mov    %rax,%rcx
  40241f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  402423:	48 89 ce             	mov    %rcx,%rsi
  402426:	48 89 c7             	mov    %rax,%rdi
  402429:	e8 72 e9 ff ff       	callq  400da0 <memcpy@plt>
  40242e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402432:	48 8b 50 08          	mov    0x8(%rax),%rdx
  402436:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402439:	48 98                	cltq   
  40243b:	48 01 c2             	add    %rax,%rdx
  40243e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402442:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402446:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40244a:	8b 40 04             	mov    0x4(%rax),%eax
  40244d:	89 c2                	mov    %eax,%edx
  40244f:	2b 55 fc             	sub    -0x4(%rbp),%edx
  402452:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402456:	89 50 04             	mov    %edx,0x4(%rax)
  402459:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40245c:	48 98                	cltq   
  40245e:	c9                   	leaveq 
  40245f:	c3                   	retq   

0000000000402460 <rio_readlineb>:
  402460:	55                   	push   %rbp
  402461:	48 89 e5             	mov    %rsp,%rbp
  402464:	48 83 ec 40          	sub    $0x40,%rsp
  402468:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40246c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  402470:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  402474:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402478:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40247c:	48 c7 45 e8 01 00 00 	movq   $0x1,-0x18(%rbp)
  402483:	00 
  402484:	eb 5c                	jmp    4024e2 <rio_readlineb+0x82>
  402486:	48 8d 4d ff          	lea    -0x1(%rbp),%rcx
  40248a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40248e:	ba 01 00 00 00       	mov    $0x1,%edx
  402493:	48 89 ce             	mov    %rcx,%rsi
  402496:	48 89 c7             	mov    %rax,%rdi
  402499:	e8 c1 fe ff ff       	callq  40235f <rio_read>
  40249e:	89 45 f8             	mov    %eax,-0x8(%rbp)
  4024a1:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
  4024a5:	75 19                	jne    4024c0 <rio_readlineb+0x60>
  4024a7:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
  4024ab:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4024af:	88 10                	mov    %dl,(%rax)
  4024b1:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  4024b6:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  4024ba:	3c 0a                	cmp    $0xa,%al
  4024bc:	75 1f                	jne    4024dd <rio_readlineb+0x7d>
  4024be:	eb 2f                	jmp    4024ef <rio_readlineb+0x8f>
  4024c0:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  4024c4:	75 0e                	jne    4024d4 <rio_readlineb+0x74>
  4024c6:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
  4024cb:	75 21                	jne    4024ee <rio_readlineb+0x8e>
  4024cd:	b8 00 00 00 00       	mov    $0x0,%eax
  4024d2:	eb 26                	jmp    4024fa <rio_readlineb+0x9a>
  4024d4:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4024db:	eb 1d                	jmp    4024fa <rio_readlineb+0x9a>
  4024dd:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  4024e2:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024e6:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  4024ea:	72 9a                	jb     402486 <rio_readlineb+0x26>
  4024ec:	eb 01                	jmp    4024ef <rio_readlineb+0x8f>
  4024ee:	90                   	nop
  4024ef:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4024f3:	c6 00 00             	movb   $0x0,(%rax)
  4024f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024fa:	c9                   	leaveq 
  4024fb:	c3                   	retq   

00000000004024fc <rio_writen>:
  4024fc:	55                   	push   %rbp
  4024fd:	48 89 e5             	mov    %rsp,%rbp
  402500:	48 83 ec 40          	sub    $0x40,%rsp
  402504:	89 7d dc             	mov    %edi,-0x24(%rbp)
  402507:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40250b:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  40250f:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  402513:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  402517:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40251b:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40251f:	eb 4f                	jmp    402570 <rio_writen+0x74>
  402521:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402525:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  402529:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40252c:	48 89 ce             	mov    %rcx,%rsi
  40252f:	89 c7                	mov    %eax,%edi
  402531:	e8 9a e7 ff ff       	callq  400cd0 <write@plt>
  402536:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40253a:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  40253f:	7f 1f                	jg     402560 <rio_writen+0x64>
  402541:	e8 3a e7 ff ff       	callq  400c80 <__errno_location@plt>
  402546:	8b 00                	mov    (%rax),%eax
  402548:	83 f8 04             	cmp    $0x4,%eax
  40254b:	75 0a                	jne    402557 <rio_writen+0x5b>
  40254d:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  402554:	00 
  402555:	eb 09                	jmp    402560 <rio_writen+0x64>
  402557:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40255e:	eb 1b                	jmp    40257b <rio_writen+0x7f>
  402560:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402564:	48 29 45 e8          	sub    %rax,-0x18(%rbp)
  402568:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40256c:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  402570:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402575:	75 aa                	jne    402521 <rio_writen+0x25>
  402577:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40257b:	c9                   	leaveq 
  40257c:	c3                   	retq   

000000000040257d <urlencode>:
  40257d:	55                   	push   %rbp
  40257e:	48 89 e5             	mov    %rsp,%rbp
  402581:	48 83 ec 40          	sub    $0x40,%rsp
  402585:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402589:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40258d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402594:	00 00 
  402596:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40259a:	31 c0                	xor    %eax,%eax
  40259c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025a0:	48 c7 45 c8 ff ff ff 	movq   $0xffffffffffffffff,-0x38(%rbp)
  4025a7:	ff 
  4025a8:	48 89 c2             	mov    %rax,%rdx
  4025ab:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b0:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  4025b4:	48 89 d7             	mov    %rdx,%rdi
  4025b7:	f2 ae                	repnz scas %es:(%rdi),%al
  4025b9:	48 89 c8             	mov    %rcx,%rax
  4025bc:	48 f7 d0             	not    %rax
  4025bf:	48 83 e8 01          	sub    $0x1,%rax
  4025c3:	89 45 ec             	mov    %eax,-0x14(%rbp)
  4025c6:	e9 26 01 00 00       	jmpq   4026f1 <urlencode+0x174>
  4025cb:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025cf:	0f b6 00             	movzbl (%rax),%eax
  4025d2:	3c 2a                	cmp    $0x2a,%al
  4025d4:	74 63                	je     402639 <urlencode+0xbc>
  4025d6:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025da:	0f b6 00             	movzbl (%rax),%eax
  4025dd:	3c 2d                	cmp    $0x2d,%al
  4025df:	74 58                	je     402639 <urlencode+0xbc>
  4025e1:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025e5:	0f b6 00             	movzbl (%rax),%eax
  4025e8:	3c 2e                	cmp    $0x2e,%al
  4025ea:	74 4d                	je     402639 <urlencode+0xbc>
  4025ec:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025f0:	0f b6 00             	movzbl (%rax),%eax
  4025f3:	3c 5f                	cmp    $0x5f,%al
  4025f5:	74 42                	je     402639 <urlencode+0xbc>
  4025f7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4025fb:	0f b6 00             	movzbl (%rax),%eax
  4025fe:	3c 2f                	cmp    $0x2f,%al
  402600:	76 0b                	jbe    40260d <urlencode+0x90>
  402602:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402606:	0f b6 00             	movzbl (%rax),%eax
  402609:	3c 39                	cmp    $0x39,%al
  40260b:	76 2c                	jbe    402639 <urlencode+0xbc>
  40260d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402611:	0f b6 00             	movzbl (%rax),%eax
  402614:	3c 40                	cmp    $0x40,%al
  402616:	76 0b                	jbe    402623 <urlencode+0xa6>
  402618:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40261c:	0f b6 00             	movzbl (%rax),%eax
  40261f:	3c 5a                	cmp    $0x5a,%al
  402621:	76 16                	jbe    402639 <urlencode+0xbc>
  402623:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402627:	0f b6 00             	movzbl (%rax),%eax
  40262a:	3c 60                	cmp    $0x60,%al
  40262c:	76 22                	jbe    402650 <urlencode+0xd3>
  40262e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402632:	0f b6 00             	movzbl (%rax),%eax
  402635:	3c 7a                	cmp    $0x7a,%al
  402637:	77 17                	ja     402650 <urlencode+0xd3>
  402639:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40263d:	0f b6 10             	movzbl (%rax),%edx
  402640:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402644:	88 10                	mov    %dl,(%rax)
  402646:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  40264b:	e9 9c 00 00 00       	jmpq   4026ec <urlencode+0x16f>
  402650:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402654:	0f b6 00             	movzbl (%rax),%eax
  402657:	3c 20                	cmp    $0x20,%al
  402659:	75 11                	jne    40266c <urlencode+0xef>
  40265b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40265f:	c6 00 2b             	movb   $0x2b,(%rax)
  402662:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  402667:	e9 80 00 00 00       	jmpq   4026ec <urlencode+0x16f>
  40266c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402670:	0f b6 00             	movzbl (%rax),%eax
  402673:	3c 1f                	cmp    $0x1f,%al
  402675:	76 0b                	jbe    402682 <urlencode+0x105>
  402677:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40267b:	0f b6 00             	movzbl (%rax),%eax
  40267e:	84 c0                	test   %al,%al
  402680:	79 0b                	jns    40268d <urlencode+0x110>
  402682:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402686:	0f b6 00             	movzbl (%rax),%eax
  402689:	3c 09                	cmp    $0x9,%al
  40268b:	75 58                	jne    4026e5 <urlencode+0x168>
  40268d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402691:	0f b6 00             	movzbl (%rax),%eax
  402694:	0f b6 d0             	movzbl %al,%edx
  402697:	b9 cc 3b 40 00       	mov    $0x403bcc,%ecx
  40269c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  4026a0:	48 89 ce             	mov    %rcx,%rsi
  4026a3:	48 89 c7             	mov    %rax,%rdi
  4026a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4026ab:	e8 b0 e7 ff ff       	callq  400e60 <sprintf@plt>
  4026b0:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  4026b4:	89 c2                	mov    %eax,%edx
  4026b6:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4026ba:	88 10                	mov    %dl,(%rax)
  4026bc:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4026c1:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  4026c5:	89 c2                	mov    %eax,%edx
  4026c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4026cb:	88 10                	mov    %dl,(%rax)
  4026cd:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4026d2:	0f b6 45 f2          	movzbl -0xe(%rbp),%eax
  4026d6:	89 c2                	mov    %eax,%edx
  4026d8:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4026dc:	88 10                	mov    %dl,(%rax)
  4026de:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4026e3:	eb 07                	jmp    4026ec <urlencode+0x16f>
  4026e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026ea:	eb 1d                	jmp    402709 <urlencode+0x18c>
  4026ec:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  4026f1:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  4026f5:	0f 95 c0             	setne  %al
  4026f8:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
  4026fc:	84 c0                	test   %al,%al
  4026fe:	0f 85 c7 fe ff ff    	jne    4025cb <urlencode+0x4e>
  402704:	b8 00 00 00 00       	mov    $0x0,%eax
  402709:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40270d:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  402714:	00 00 
  402716:	74 05                	je     40271d <urlencode+0x1a0>
  402718:	e8 c3 e5 ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  40271d:	c9                   	leaveq 
  40271e:	c3                   	retq   

000000000040271f <submitr>:
  40271f:	55                   	push   %rbp
  402720:	48 89 e5             	mov    %rsp,%rbp
  402723:	48 81 ec 90 a0 00 00 	sub    $0xa090,%rsp
  40272a:	48 89 bd a8 5f ff ff 	mov    %rdi,-0xa058(%rbp)
  402731:	89 b5 a4 5f ff ff    	mov    %esi,-0xa05c(%rbp)
  402737:	48 89 95 98 5f ff ff 	mov    %rdx,-0xa068(%rbp)
  40273e:	48 89 8d 90 5f ff ff 	mov    %rcx,-0xa070(%rbp)
  402745:	4c 89 85 88 5f ff ff 	mov    %r8,-0xa078(%rbp)
  40274c:	4c 89 8d 80 5f ff ff 	mov    %r9,-0xa080(%rbp)
  402753:	48 8b 45 10          	mov    0x10(%rbp),%rax
  402757:	48 89 85 78 5f ff ff 	mov    %rax,-0xa088(%rbp)
  40275e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402765:	00 00 
  402767:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40276b:	31 c0                	xor    %eax,%eax
  40276d:	c7 85 c8 5f ff ff 00 	movl   $0x0,-0xa038(%rbp)
  402774:	00 00 00 
  402777:	ba 00 00 00 00       	mov    $0x0,%edx
  40277c:	be 01 00 00 00       	mov    $0x1,%esi
  402781:	bf 02 00 00 00       	mov    $0x2,%edi
  402786:	e8 05 e7 ff ff       	callq  400e90 <socket@plt>
  40278b:	89 85 cc 5f ff ff    	mov    %eax,-0xa034(%rbp)
  402791:	83 bd cc 5f ff ff 00 	cmpl   $0x0,-0xa034(%rbp)
  402798:	79 42                	jns    4027dc <submitr+0xbd>
  40279a:	ba d8 3b 40 00       	mov    $0x403bd8,%edx
  40279f:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  4027a6:	48 8b 0a             	mov    (%rdx),%rcx
  4027a9:	48 89 08             	mov    %rcx,(%rax)
  4027ac:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4027b0:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4027b4:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4027b8:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4027bc:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  4027c0:	48 89 48 18          	mov    %rcx,0x18(%rax)
  4027c4:	8b 4a 20             	mov    0x20(%rdx),%ecx
  4027c7:	89 48 20             	mov    %ecx,0x20(%rax)
  4027ca:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
  4027ce:	66 89 50 24          	mov    %dx,0x24(%rax)
  4027d2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027d7:	e9 54 07 00 00       	jmpq   402f30 <submitr+0x811>
  4027dc:	48 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%rax
  4027e3:	48 89 c7             	mov    %rax,%rdi
  4027e6:	e8 95 e5 ff ff       	callq  400d80 <gethostbyname@plt>
  4027eb:	48 89 85 b0 5f ff ff 	mov    %rax,-0xa050(%rbp)
  4027f2:	48 83 bd b0 5f ff ff 	cmpq   $0x0,-0xa050(%rbp)
  4027f9:	00 
  4027fa:	75 5e                	jne    40285a <submitr+0x13b>
  4027fc:	ba 00 3c 40 00       	mov    $0x403c00,%edx
  402801:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402808:	48 8b 0a             	mov    (%rdx),%rcx
  40280b:	48 89 08             	mov    %rcx,(%rax)
  40280e:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402812:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402816:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  40281a:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40281e:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402822:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402826:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  40282a:	48 89 48 20          	mov    %rcx,0x20(%rax)
  40282e:	8b 4a 28             	mov    0x28(%rdx),%ecx
  402831:	89 48 28             	mov    %ecx,0x28(%rax)
  402834:	0f b7 4a 2c          	movzwl 0x2c(%rdx),%ecx
  402838:	66 89 48 2c          	mov    %cx,0x2c(%rax)
  40283c:	0f b6 52 2e          	movzbl 0x2e(%rdx),%edx
  402840:	88 50 2e             	mov    %dl,0x2e(%rax)
  402843:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402849:	89 c7                	mov    %eax,%edi
  40284b:	e8 f0 e4 ff ff       	callq  400d40 <close@plt>
  402850:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402855:	e9 d6 06 00 00       	jmpq   402f30 <submitr+0x811>
  40285a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  40285e:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  402865:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  40286c:	00 
  40286d:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  402873:	48 8b 85 b0 5f ff ff 	mov    -0xa050(%rbp),%rax
  40287a:	8b 40 14             	mov    0x14(%rax),%eax
  40287d:	48 63 d0             	movslq %eax,%rdx
  402880:	48 8b 85 b0 5f ff ff 	mov    -0xa050(%rbp),%rax
  402887:	48 8b 40 18          	mov    0x18(%rax),%rax
  40288b:	48 8b 00             	mov    (%rax),%rax
  40288e:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  402892:	48 83 c1 04          	add    $0x4,%rcx
  402896:	48 89 ce             	mov    %rcx,%rsi
  402899:	48 89 c7             	mov    %rax,%rdi
  40289c:	e8 5f e5 ff ff       	callq  400e00 <bcopy@plt>
  4028a1:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  4028a7:	0f b7 c0             	movzwl %ax,%eax
  4028aa:	89 c7                	mov    %eax,%edi
  4028ac:	e8 4f e4 ff ff       	callq  400d00 <htons@plt>
  4028b1:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  4028b5:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  4028b9:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  4028bf:	ba 10 00 00 00       	mov    $0x10,%edx
  4028c4:	48 89 ce             	mov    %rcx,%rsi
  4028c7:	89 c7                	mov    %eax,%edi
  4028c9:	e8 b2 e5 ff ff       	callq  400e80 <connect@plt>
  4028ce:	85 c0                	test   %eax,%eax
  4028d0:	79 56                	jns    402928 <submitr+0x209>
  4028d2:	ba 30 3c 40 00       	mov    $0x403c30,%edx
  4028d7:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  4028de:	48 8b 0a             	mov    (%rdx),%rcx
  4028e1:	48 89 08             	mov    %rcx,(%rax)
  4028e4:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4028e8:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4028ec:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4028f0:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4028f4:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  4028f8:	48 89 48 18          	mov    %rcx,0x18(%rax)
  4028fc:	8b 4a 20             	mov    0x20(%rdx),%ecx
  4028ff:	89 48 20             	mov    %ecx,0x20(%rax)
  402902:	0f b7 4a 24          	movzwl 0x24(%rdx),%ecx
  402906:	66 89 48 24          	mov    %cx,0x24(%rax)
  40290a:	0f b6 52 26          	movzbl 0x26(%rdx),%edx
  40290e:	88 50 26             	mov    %dl,0x26(%rax)
  402911:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402917:	89 c7                	mov    %eax,%edi
  402919:	e8 22 e4 ff ff       	callq  400d40 <close@plt>
  40291e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402923:	e9 08 06 00 00       	jmpq   402f30 <submitr+0x811>
  402928:	48 8b 85 80 5f ff ff 	mov    -0xa080(%rbp),%rax
  40292f:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402936:	ff ff ff ff 
  40293a:	48 89 c2             	mov    %rax,%rdx
  40293d:	b8 00 00 00 00       	mov    $0x0,%eax
  402942:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402949:	48 89 d7             	mov    %rdx,%rdi
  40294c:	f2 ae                	repnz scas %es:(%rdi),%al
  40294e:	48 89 c8             	mov    %rcx,%rax
  402951:	48 f7 d0             	not    %rax
  402954:	48 83 e8 01          	sub    $0x1,%rax
  402958:	48 89 85 b8 5f ff ff 	mov    %rax,-0xa048(%rbp)
  40295f:	48 8b 85 98 5f ff ff 	mov    -0xa068(%rbp),%rax
  402966:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  40296d:	ff ff ff ff 
  402971:	48 89 c2             	mov    %rax,%rdx
  402974:	b8 00 00 00 00       	mov    $0x0,%eax
  402979:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402980:	48 89 d7             	mov    %rdx,%rdi
  402983:	f2 ae                	repnz scas %es:(%rdi),%al
  402985:	48 89 c8             	mov    %rcx,%rax
  402988:	48 f7 d0             	not    %rax
  40298b:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
  40298f:	48 8b 85 90 5f ff ff 	mov    -0xa070(%rbp),%rax
  402996:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  40299d:	ff ff ff ff 
  4029a1:	48 89 c2             	mov    %rax,%rdx
  4029a4:	b8 00 00 00 00       	mov    $0x0,%eax
  4029a9:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  4029b0:	48 89 d7             	mov    %rdx,%rdi
  4029b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4029b5:	48 89 c8             	mov    %rcx,%rax
  4029b8:	48 f7 d0             	not    %rax
  4029bb:	48 83 e8 01          	sub    $0x1,%rax
  4029bf:	48 01 c6             	add    %rax,%rsi
  4029c2:	48 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%rax
  4029c9:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  4029d0:	ff ff ff ff 
  4029d4:	48 89 c2             	mov    %rax,%rdx
  4029d7:	b8 00 00 00 00       	mov    $0x0,%eax
  4029dc:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  4029e3:	48 89 d7             	mov    %rdx,%rdi
  4029e6:	f2 ae                	repnz scas %es:(%rdi),%al
  4029e8:	48 89 c8             	mov    %rcx,%rax
  4029eb:	48 f7 d0             	not    %rax
  4029ee:	48 83 e8 01          	sub    $0x1,%rax
  4029f2:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
  4029f6:	48 8b 95 b8 5f ff ff 	mov    -0xa048(%rbp),%rdx
  4029fd:	48 89 d0             	mov    %rdx,%rax
  402a00:	48 01 c0             	add    %rax,%rax
  402a03:	48 01 d0             	add    %rdx,%rax
  402a06:	48 01 c8             	add    %rcx,%rax
  402a09:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  402a0d:	48 89 85 c0 5f ff ff 	mov    %rax,-0xa040(%rbp)
  402a14:	48 81 bd c0 5f ff ff 	cmpq   $0x2000,-0xa040(%rbp)
  402a1b:	00 20 00 00 
  402a1f:	76 59                	jbe    402a7a <submitr+0x35b>
  402a21:	ba 58 3c 40 00       	mov    $0x403c58,%edx
  402a26:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402a2d:	48 8b 0a             	mov    (%rdx),%rcx
  402a30:	48 89 08             	mov    %rcx,(%rax)
  402a33:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a37:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402a3b:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402a3f:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402a43:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402a47:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402a4b:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402a4f:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402a53:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402a57:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402a5b:	48 8b 52 30          	mov    0x30(%rdx),%rdx
  402a5f:	48 89 50 30          	mov    %rdx,0x30(%rax)
  402a63:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402a69:	89 c7                	mov    %eax,%edi
  402a6b:	e8 d0 e2 ff ff       	callq  400d40 <close@plt>
  402a70:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a75:	e9 b6 04 00 00       	jmpq   402f30 <submitr+0x811>
  402a7a:	48 8d 85 e0 9f ff ff 	lea    -0x6020(%rbp),%rax
  402a81:	48 89 c6             	mov    %rax,%rsi
  402a84:	b8 00 00 00 00       	mov    $0x0,%eax
  402a89:	ba 00 04 00 00       	mov    $0x400,%edx
  402a8e:	48 89 f7             	mov    %rsi,%rdi
  402a91:	48 89 d1             	mov    %rdx,%rcx
  402a94:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402a97:	48 8d 95 e0 9f ff ff 	lea    -0x6020(%rbp),%rdx
  402a9e:	48 8b 85 80 5f ff ff 	mov    -0xa080(%rbp),%rax
  402aa5:	48 89 d6             	mov    %rdx,%rsi
  402aa8:	48 89 c7             	mov    %rax,%rdi
  402aab:	e8 cd fa ff ff       	callq  40257d <urlencode>
  402ab0:	85 c0                	test   %eax,%eax
  402ab2:	79 70                	jns    402b24 <submitr+0x405>
  402ab4:	ba 90 3c 40 00       	mov    $0x403c90,%edx
  402ab9:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402ac0:	48 8b 0a             	mov    (%rdx),%rcx
  402ac3:	48 89 08             	mov    %rcx,(%rax)
  402ac6:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402aca:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402ace:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402ad2:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402ad6:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402ada:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402ade:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402ae2:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402ae6:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402aea:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402aee:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402af2:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402af6:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  402afa:	48 89 48 38          	mov    %rcx,0x38(%rax)
  402afe:	0f b7 4a 40          	movzwl 0x40(%rdx),%ecx
  402b02:	66 89 48 40          	mov    %cx,0x40(%rax)
  402b06:	0f b6 52 42          	movzbl 0x42(%rdx),%edx
  402b0a:	88 50 42             	mov    %dl,0x42(%rax)
  402b0d:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402b13:	89 c7                	mov    %eax,%edi
  402b15:	e8 26 e2 ff ff       	callq  400d40 <close@plt>
  402b1a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b1f:	e9 0c 04 00 00       	jmpq   402f30 <submitr+0x811>
  402b24:	be d8 3c 40 00       	mov    $0x403cd8,%esi
  402b29:	4c 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%r8
  402b30:	48 8d bd e0 9f ff ff 	lea    -0x6020(%rbp),%rdi
  402b37:	48 8b 8d 98 5f ff ff 	mov    -0xa068(%rbp),%rcx
  402b3e:	48 8b 95 90 5f ff ff 	mov    -0xa070(%rbp),%rdx
  402b45:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402b4c:	4d 89 c1             	mov    %r8,%r9
  402b4f:	49 89 f8             	mov    %rdi,%r8
  402b52:	48 89 c7             	mov    %rax,%rdi
  402b55:	b8 00 00 00 00       	mov    $0x0,%eax
  402b5a:	e8 01 e3 ff ff       	callq  400e60 <sprintf@plt>
  402b5f:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402b66:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402b6d:	ff ff ff ff 
  402b71:	48 89 c2             	mov    %rax,%rdx
  402b74:	b8 00 00 00 00       	mov    $0x0,%eax
  402b79:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402b80:	48 89 d7             	mov    %rdx,%rdi
  402b83:	f2 ae                	repnz scas %es:(%rdi),%al
  402b85:	48 89 c8             	mov    %rcx,%rax
  402b88:	48 f7 d0             	not    %rax
  402b8b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  402b8f:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402b96:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402b9c:	48 89 ce             	mov    %rcx,%rsi
  402b9f:	89 c7                	mov    %eax,%edi
  402ba1:	e8 56 f9 ff ff       	callq  4024fc <rio_writen>
  402ba6:	48 85 c0             	test   %rax,%rax
  402ba9:	79 60                	jns    402c0b <submitr+0x4ec>
  402bab:	ba 18 3d 40 00       	mov    $0x403d18,%edx
  402bb0:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402bb7:	48 8b 0a             	mov    (%rdx),%rcx
  402bba:	48 89 08             	mov    %rcx,(%rax)
  402bbd:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402bc1:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402bc5:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402bc9:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402bcd:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402bd1:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402bd5:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402bd9:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402bdd:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402be1:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402be5:	0f b7 4a 30          	movzwl 0x30(%rdx),%ecx
  402be9:	66 89 48 30          	mov    %cx,0x30(%rax)
  402bed:	0f b6 52 32          	movzbl 0x32(%rdx),%edx
  402bf1:	88 50 32             	mov    %dl,0x32(%rax)
  402bf4:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402bfa:	89 c7                	mov    %eax,%edi
  402bfc:	e8 3f e1 ff ff       	callq  400d40 <close@plt>
  402c01:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c06:	e9 25 03 00 00       	jmpq   402f30 <submitr+0x811>
  402c0b:	8b 95 cc 5f ff ff    	mov    -0xa034(%rbp),%edx
  402c11:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402c18:	89 d6                	mov    %edx,%esi
  402c1a:	48 89 c7             	mov    %rax,%rdi
  402c1d:	e8 0c f7 ff ff       	callq  40232e <rio_readinitb>
  402c22:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402c29:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402c30:	ba 00 20 00 00       	mov    $0x2000,%edx
  402c35:	48 89 ce             	mov    %rcx,%rsi
  402c38:	48 89 c7             	mov    %rax,%rdi
  402c3b:	e8 20 f8 ff ff       	callq  402460 <rio_readlineb>
  402c40:	48 85 c0             	test   %rax,%rax
  402c43:	7f 66                	jg     402cab <submitr+0x58c>
  402c45:	ba 50 3d 40 00       	mov    $0x403d50,%edx
  402c4a:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402c51:	48 8b 0a             	mov    (%rdx),%rcx
  402c54:	48 89 08             	mov    %rcx,(%rax)
  402c57:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402c5b:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402c5f:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402c63:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402c67:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402c6b:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402c6f:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402c73:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402c77:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402c7b:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402c7f:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402c83:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402c87:	8b 4a 38             	mov    0x38(%rdx),%ecx
  402c8a:	89 48 38             	mov    %ecx,0x38(%rax)
  402c8d:	0f b6 52 3c          	movzbl 0x3c(%rdx),%edx
  402c91:	88 50 3c             	mov    %dl,0x3c(%rax)
  402c94:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402c9a:	89 c7                	mov    %eax,%edi
  402c9c:	e8 9f e0 ff ff       	callq  400d40 <close@plt>
  402ca1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ca6:	e9 85 02 00 00       	jmpq   402f30 <submitr+0x811>
  402cab:	be 8d 3d 40 00       	mov    $0x403d8d,%esi
  402cb0:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402cb7:	48 8d bd e0 df ff ff 	lea    -0x2020(%rbp),%rdi
  402cbe:	48 8d 8d c8 5f ff ff 	lea    -0xa038(%rbp),%rcx
  402cc5:	48 8d 95 e0 bf ff ff 	lea    -0x4020(%rbp),%rdx
  402ccc:	49 89 f8             	mov    %rdi,%r8
  402ccf:	48 89 c7             	mov    %rax,%rdi
  402cd2:	b8 00 00 00 00       	mov    $0x0,%eax
  402cd7:	e8 04 e1 ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  402cdc:	e9 82 00 00 00       	jmpq   402d63 <submitr+0x644>
  402ce1:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402ce8:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402cef:	ba 00 20 00 00       	mov    $0x2000,%edx
  402cf4:	48 89 ce             	mov    %rcx,%rsi
  402cf7:	48 89 c7             	mov    %rax,%rdi
  402cfa:	e8 61 f7 ff ff       	callq  402460 <rio_readlineb>
  402cff:	48 85 c0             	test   %rax,%rax
  402d02:	7f 5f                	jg     402d63 <submitr+0x644>
  402d04:	ba a0 3d 40 00       	mov    $0x403da0,%edx
  402d09:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402d10:	48 8b 0a             	mov    (%rdx),%rcx
  402d13:	48 89 08             	mov    %rcx,(%rax)
  402d16:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d1a:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402d1e:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402d22:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402d26:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402d2a:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402d2e:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402d32:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402d36:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402d3a:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402d3e:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402d42:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402d46:	8b 52 38             	mov    0x38(%rdx),%edx
  402d49:	89 50 38             	mov    %edx,0x38(%rax)
  402d4c:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402d52:	89 c7                	mov    %eax,%edi
  402d54:	e8 e7 df ff ff       	callq  400d40 <close@plt>
  402d59:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d5e:	e9 cd 01 00 00       	jmpq   402f30 <submitr+0x811>
  402d63:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402d6a:	48 89 c2             	mov    %rax,%rdx
  402d6d:	b8 dc 3d 40 00       	mov    $0x403ddc,%eax
  402d72:	b9 03 00 00 00       	mov    $0x3,%ecx
  402d77:	48 89 d6             	mov    %rdx,%rsi
  402d7a:	48 89 c7             	mov    %rax,%rdi
  402d7d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402d7f:	0f 97 c2             	seta   %dl
  402d82:	0f 92 c0             	setb   %al
  402d85:	89 d1                	mov    %edx,%ecx
  402d87:	28 c1                	sub    %al,%cl
  402d89:	89 c8                	mov    %ecx,%eax
  402d8b:	0f be c0             	movsbl %al,%eax
  402d8e:	85 c0                	test   %eax,%eax
  402d90:	0f 85 4b ff ff ff    	jne    402ce1 <submitr+0x5c2>
  402d96:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402d9d:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402da4:	ba 00 20 00 00       	mov    $0x2000,%edx
  402da9:	48 89 ce             	mov    %rcx,%rsi
  402dac:	48 89 c7             	mov    %rax,%rdi
  402daf:	e8 ac f6 ff ff       	callq  402460 <rio_readlineb>
  402db4:	48 85 c0             	test   %rax,%rax
  402db7:	7f 6e                	jg     402e27 <submitr+0x708>
  402db9:	ba e0 3d 40 00       	mov    $0x403de0,%edx
  402dbe:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402dc5:	48 8b 0a             	mov    (%rdx),%rcx
  402dc8:	48 89 08             	mov    %rcx,(%rax)
  402dcb:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402dcf:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402dd3:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402dd7:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402ddb:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402ddf:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402de3:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402de7:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402deb:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402def:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402df3:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402df7:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402dfb:	8b 4a 38             	mov    0x38(%rdx),%ecx
  402dfe:	89 48 38             	mov    %ecx,0x38(%rax)
  402e01:	0f b7 4a 3c          	movzwl 0x3c(%rdx),%ecx
  402e05:	66 89 48 3c          	mov    %cx,0x3c(%rax)
  402e09:	0f b6 52 3e          	movzbl 0x3e(%rdx),%edx
  402e0d:	88 50 3e             	mov    %dl,0x3e(%rax)
  402e10:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402e16:	89 c7                	mov    %eax,%edi
  402e18:	e8 23 df ff ff       	callq  400d40 <close@plt>
  402e1d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e22:	e9 09 01 00 00       	jmpq   402f30 <submitr+0x811>
  402e27:	8b 85 c8 5f ff ff    	mov    -0xa038(%rbp),%eax
  402e2d:	3d c8 00 00 00       	cmp    $0xc8,%eax
  402e32:	74 3d                	je     402e71 <submitr+0x752>
  402e34:	8b 95 c8 5f ff ff    	mov    -0xa038(%rbp),%edx
  402e3a:	be 20 3e 40 00       	mov    $0x403e20,%esi
  402e3f:	48 8d 8d e0 df ff ff 	lea    -0x2020(%rbp),%rcx
  402e46:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402e4d:	48 89 c7             	mov    %rax,%rdi
  402e50:	b8 00 00 00 00       	mov    $0x0,%eax
  402e55:	e8 06 e0 ff ff       	callq  400e60 <sprintf@plt>
  402e5a:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402e60:	89 c7                	mov    %eax,%edi
  402e62:	e8 d9 de ff ff       	callq  400d40 <close@plt>
  402e67:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e6c:	e9 bf 00 00 00       	jmpq   402f30 <submitr+0x811>
  402e71:	48 8d 95 e0 7f ff ff 	lea    -0x8020(%rbp),%rdx
  402e78:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402e7f:	48 89 d6             	mov    %rdx,%rsi
  402e82:	48 89 c7             	mov    %rax,%rdi
  402e85:	e8 26 de ff ff       	callq  400cb0 <strcpy@plt>
  402e8a:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402e90:	89 c7                	mov    %eax,%edi
  402e92:	e8 a9 de ff ff       	callq  400d40 <close@plt>
  402e97:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402e9e:	48 89 c2             	mov    %rax,%rdx
  402ea1:	b8 4d 3e 40 00       	mov    $0x403e4d,%eax
  402ea6:	b9 04 00 00 00       	mov    $0x4,%ecx
  402eab:	48 89 d6             	mov    %rdx,%rsi
  402eae:	48 89 c7             	mov    %rax,%rdi
  402eb1:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402eb3:	0f 97 c2             	seta   %dl
  402eb6:	0f 92 c0             	setb   %al
  402eb9:	89 d1                	mov    %edx,%ecx
  402ebb:	28 c1                	sub    %al,%cl
  402ebd:	89 c8                	mov    %ecx,%eax
  402ebf:	0f be c0             	movsbl %al,%eax
  402ec2:	85 c0                	test   %eax,%eax
  402ec4:	74 5e                	je     402f24 <submitr+0x805>
  402ec6:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402ecd:	48 89 c2             	mov    %rax,%rdx
  402ed0:	b8 51 3e 40 00       	mov    $0x403e51,%eax
  402ed5:	b9 05 00 00 00       	mov    $0x5,%ecx
  402eda:	48 89 d6             	mov    %rdx,%rsi
  402edd:	48 89 c7             	mov    %rax,%rdi
  402ee0:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ee2:	0f 97 c2             	seta   %dl
  402ee5:	0f 92 c0             	setb   %al
  402ee8:	89 d1                	mov    %edx,%ecx
  402eea:	28 c1                	sub    %al,%cl
  402eec:	89 c8                	mov    %ecx,%eax
  402eee:	0f be c0             	movsbl %al,%eax
  402ef1:	85 c0                	test   %eax,%eax
  402ef3:	74 2f                	je     402f24 <submitr+0x805>
  402ef5:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402efc:	48 89 c2             	mov    %rax,%rdx
  402eff:	b8 56 3e 40 00       	mov    $0x403e56,%eax
  402f04:	b9 03 00 00 00       	mov    $0x3,%ecx
  402f09:	48 89 d6             	mov    %rdx,%rsi
  402f0c:	48 89 c7             	mov    %rax,%rdi
  402f0f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402f11:	0f 97 c2             	seta   %dl
  402f14:	0f 92 c0             	setb   %al
  402f17:	89 d1                	mov    %edx,%ecx
  402f19:	28 c1                	sub    %al,%cl
  402f1b:	89 c8                	mov    %ecx,%eax
  402f1d:	0f be c0             	movsbl %al,%eax
  402f20:	85 c0                	test   %eax,%eax
  402f22:	75 07                	jne    402f2b <submitr+0x80c>
  402f24:	b8 00 00 00 00       	mov    $0x0,%eax
  402f29:	eb 05                	jmp    402f30 <submitr+0x811>
  402f2b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f30:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  402f34:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402f3b:	00 00 
  402f3d:	74 05                	je     402f44 <submitr+0x825>
  402f3f:	e8 9c dd ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  402f44:	c9                   	leaveq 
  402f45:	c3                   	retq   

0000000000402f46 <init_timeout>:
  402f46:	55                   	push   %rbp
  402f47:	48 89 e5             	mov    %rsp,%rbp
  402f4a:	48 83 ec 10          	sub    $0x10,%rsp
  402f4e:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402f51:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402f55:	74 28                	je     402f7f <init_timeout+0x39>
  402f57:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  402f5b:	79 07                	jns    402f64 <init_timeout+0x1e>
  402f5d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  402f64:	be f8 22 40 00       	mov    $0x4022f8,%esi
  402f69:	bf 0e 00 00 00       	mov    $0xe,%edi
  402f6e:	e8 fd dd ff ff       	callq  400d70 <signal@plt>
  402f73:	8b 45 fc             	mov    -0x4(%rbp),%eax
  402f76:	89 c7                	mov    %eax,%edi
  402f78:	e8 b3 dd ff ff       	callq  400d30 <alarm@plt>
  402f7d:	eb 01                	jmp    402f80 <init_timeout+0x3a>
  402f7f:	90                   	nop
  402f80:	c9                   	leaveq 
  402f81:	c3                   	retq   

0000000000402f82 <init_driver>:
  402f82:	55                   	push   %rbp
  402f83:	48 89 e5             	mov    %rsp,%rbp
  402f86:	48 83 ec 50          	sub    $0x50,%rsp
  402f8a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  402f8e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402f95:	00 00 
  402f97:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402f9b:	31 c0                	xor    %eax,%eax
  402f9d:	48 c7 45 c8 59 3e 40 	movq   $0x403e59,-0x38(%rbp)
  402fa4:	00 
  402fa5:	c7 45 d8 9a 3c 00 00 	movl   $0x3c9a,-0x28(%rbp)
  402fac:	be 01 00 00 00       	mov    $0x1,%esi
  402fb1:	bf 0d 00 00 00       	mov    $0xd,%edi
  402fb6:	e8 b5 dd ff ff       	callq  400d70 <signal@plt>
  402fbb:	be 01 00 00 00       	mov    $0x1,%esi
  402fc0:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402fc5:	e8 a6 dd ff ff       	callq  400d70 <signal@plt>
  402fca:	be 01 00 00 00       	mov    $0x1,%esi
  402fcf:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402fd4:	e8 97 dd ff ff       	callq  400d70 <signal@plt>
  402fd9:	ba 00 00 00 00       	mov    $0x0,%edx
  402fde:	be 01 00 00 00       	mov    $0x1,%esi
  402fe3:	bf 02 00 00 00       	mov    $0x2,%edi
  402fe8:	e8 a3 de ff ff       	callq  400e90 <socket@plt>
  402fed:	89 45 dc             	mov    %eax,-0x24(%rbp)
  402ff0:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  402ff4:	79 3f                	jns    403035 <init_driver+0xb3>
  402ff6:	ba d8 3b 40 00       	mov    $0x403bd8,%edx
  402ffb:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  402fff:	48 8b 0a             	mov    (%rdx),%rcx
  403002:	48 89 08             	mov    %rcx,(%rax)
  403005:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  403009:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40300d:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  403011:	48 89 48 10          	mov    %rcx,0x10(%rax)
  403015:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  403019:	48 89 48 18          	mov    %rcx,0x18(%rax)
  40301d:	8b 4a 20             	mov    0x20(%rdx),%ecx
  403020:	89 48 20             	mov    %ecx,0x20(%rax)
  403023:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
  403027:	66 89 50 24          	mov    %dx,0x24(%rax)
  40302b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403030:	e9 5a 01 00 00       	jmpq   40318f <init_driver+0x20d>
  403035:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  403039:	48 89 c7             	mov    %rax,%rdi
  40303c:	e8 3f dd ff ff       	callq  400d80 <gethostbyname@plt>
  403041:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  403045:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  40304a:	75 58                	jne    4030a4 <init_driver+0x122>
  40304c:	ba 00 3c 40 00       	mov    $0x403c00,%edx
  403051:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403055:	48 8b 0a             	mov    (%rdx),%rcx
  403058:	48 89 08             	mov    %rcx,(%rax)
  40305b:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  40305f:	48 89 48 08          	mov    %rcx,0x8(%rax)
  403063:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  403067:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40306b:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  40306f:	48 89 48 18          	mov    %rcx,0x18(%rax)
  403073:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  403077:	48 89 48 20          	mov    %rcx,0x20(%rax)
  40307b:	8b 4a 28             	mov    0x28(%rdx),%ecx
  40307e:	89 48 28             	mov    %ecx,0x28(%rax)
  403081:	0f b7 4a 2c          	movzwl 0x2c(%rdx),%ecx
  403085:	66 89 48 2c          	mov    %cx,0x2c(%rax)
  403089:	0f b6 52 2e          	movzbl 0x2e(%rdx),%edx
  40308d:	88 50 2e             	mov    %dl,0x2e(%rax)
  403090:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403093:	89 c7                	mov    %eax,%edi
  403095:	e8 a6 dc ff ff       	callq  400d40 <close@plt>
  40309a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40309f:	e9 eb 00 00 00       	jmpq   40318f <init_driver+0x20d>
  4030a4:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  4030a8:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  4030af:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  4030b6:	00 
  4030b7:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  4030bd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4030c1:	8b 40 14             	mov    0x14(%rax),%eax
  4030c4:	48 63 d0             	movslq %eax,%rdx
  4030c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4030cb:	48 8b 40 18          	mov    0x18(%rax),%rax
  4030cf:	48 8b 00             	mov    (%rax),%rax
  4030d2:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  4030d6:	48 83 c1 04          	add    $0x4,%rcx
  4030da:	48 89 ce             	mov    %rcx,%rsi
  4030dd:	48 89 c7             	mov    %rax,%rdi
  4030e0:	e8 1b dd ff ff       	callq  400e00 <bcopy@plt>
  4030e5:	8b 45 d8             	mov    -0x28(%rbp),%eax
  4030e8:	0f b7 c0             	movzwl %ax,%eax
  4030eb:	89 c7                	mov    %eax,%edi
  4030ed:	e8 0e dc ff ff       	callq  400d00 <htons@plt>
  4030f2:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  4030f6:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  4030fa:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4030fd:	ba 10 00 00 00       	mov    $0x10,%edx
  403102:	48 89 ce             	mov    %rcx,%rsi
  403105:	89 c7                	mov    %eax,%edi
  403107:	e8 74 dd ff ff       	callq  400e80 <connect@plt>
  40310c:	85 c0                	test   %eax,%eax
  40310e:	79 5a                	jns    40316a <init_driver+0x1e8>
  403110:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  403114:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403118:	48 89 d6             	mov    %rdx,%rsi
  40311b:	48 89 c7             	mov    %rax,%rdi
  40311e:	e8 8d db ff ff       	callq  400cb0 <strcpy@plt>
  403123:	ba 68 3e 40 00       	mov    $0x403e68,%edx
  403128:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40312c:	48 8b 0a             	mov    (%rdx),%rcx
  40312f:	48 89 08             	mov    %rcx,(%rax)
  403132:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  403136:	48 89 48 08          	mov    %rcx,0x8(%rax)
  40313a:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  40313e:	48 89 48 10          	mov    %rcx,0x10(%rax)
  403142:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  403146:	48 89 48 18          	mov    %rcx,0x18(%rax)
  40314a:	0f b7 4a 20          	movzwl 0x20(%rdx),%ecx
  40314e:	66 89 48 20          	mov    %cx,0x20(%rax)
  403152:	0f b6 52 22          	movzbl 0x22(%rdx),%edx
  403156:	88 50 22             	mov    %dl,0x22(%rax)
  403159:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40315c:	89 c7                	mov    %eax,%edi
  40315e:	e8 dd db ff ff       	callq  400d40 <close@plt>
  403163:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403168:	eb 25                	jmp    40318f <init_driver+0x20d>
  40316a:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40316d:	89 c7                	mov    %eax,%edi
  40316f:	e8 cc db ff ff       	callq  400d40 <close@plt>
  403174:	ba 56 3e 40 00       	mov    $0x403e56,%edx
  403179:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40317d:	0f b7 0a             	movzwl (%rdx),%ecx
  403180:	66 89 08             	mov    %cx,(%rax)
  403183:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  403187:	88 50 02             	mov    %dl,0x2(%rax)
  40318a:	b8 00 00 00 00       	mov    $0x0,%eax
  40318f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403193:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40319a:	00 00 
  40319c:	74 05                	je     4031a3 <init_driver+0x221>
  40319e:	e8 3d db ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  4031a3:	c9                   	leaveq 
  4031a4:	c3                   	retq   

00000000004031a5 <driver_post>:
  4031a5:	55                   	push   %rbp
  4031a6:	48 89 e5             	mov    %rsp,%rbp
  4031a9:	48 83 ec 50          	sub    $0x50,%rsp
  4031ad:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4031b1:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  4031b5:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  4031b9:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  4031bd:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  4031c1:	4c 89 4d c0          	mov    %r9,-0x40(%rbp)
  4031c5:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
  4031c9:	74 36                	je     403201 <driver_post+0x5c>
  4031cb:	b8 8b 3e 40 00       	mov    $0x403e8b,%eax
  4031d0:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  4031d4:	48 89 d6             	mov    %rdx,%rsi
  4031d7:	48 89 c7             	mov    %rax,%rdi
  4031da:	b8 00 00 00 00       	mov    $0x0,%eax
  4031df:	e8 2c db ff ff       	callq  400d10 <printf@plt>
  4031e4:	ba 56 3e 40 00       	mov    $0x403e56,%edx
  4031e9:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  4031ed:	0f b7 0a             	movzwl (%rdx),%ecx
  4031f0:	66 89 08             	mov    %cx,(%rax)
  4031f3:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  4031f7:	88 50 02             	mov    %dl,0x2(%rax)
  4031fa:	b8 00 00 00 00       	mov    $0x0,%eax
  4031ff:	eb 68                	jmp    403269 <driver_post+0xc4>
  403201:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  403206:	74 46                	je     40324e <driver_post+0xa9>
  403208:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40320c:	0f b6 00             	movzbl (%rax),%eax
  40320f:	84 c0                	test   %al,%al
  403211:	74 3b                	je     40324e <driver_post+0xa9>
  403213:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  403217:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  40321b:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  40321f:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  403223:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  403227:	48 89 0c 24          	mov    %rcx,(%rsp)
  40322b:	49 89 f9             	mov    %rdi,%r9
  40322e:	49 89 f0             	mov    %rsi,%r8
  403231:	48 89 d1             	mov    %rdx,%rcx
  403234:	48 89 c2             	mov    %rax,%rdx
  403237:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  40323c:	bf 59 3e 40 00       	mov    $0x403e59,%edi
  403241:	e8 d9 f4 ff ff       	callq  40271f <submitr>
  403246:	89 45 fc             	mov    %eax,-0x4(%rbp)
  403249:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40324c:	eb 1b                	jmp    403269 <driver_post+0xc4>
  40324e:	ba 56 3e 40 00       	mov    $0x403e56,%edx
  403253:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  403257:	0f b7 0a             	movzwl (%rdx),%ecx
  40325a:	66 89 08             	mov    %cx,(%rax)
  40325d:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  403261:	88 50 02             	mov    %dl,0x2(%rax)
  403264:	b8 00 00 00 00       	mov    $0x0,%eax
  403269:	c9                   	leaveq 
  40326a:	c3                   	retq   
  40326b:	90                   	nop

000000000040326c <check>:
  40326c:	55                   	push   %rbp
  40326d:	48 89 e5             	mov    %rsp,%rbp
  403270:	53                   	push   %rbx
  403271:	89 7d e4             	mov    %edi,-0x1c(%rbp)
  403274:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  403277:	c1 e8 1c             	shr    $0x1c,%eax
  40327a:	85 c0                	test   %eax,%eax
  40327c:	75 07                	jne    403285 <check+0x19>
  40327e:	b8 00 00 00 00       	mov    $0x0,%eax
  403283:	eb 37                	jmp    4032bc <check+0x50>
  403285:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40328c:	eb 23                	jmp    4032b1 <check+0x45>
  40328e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  403291:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  403294:	89 d3                	mov    %edx,%ebx
  403296:	89 c1                	mov    %eax,%ecx
  403298:	d3 eb                	shr    %cl,%ebx
  40329a:	89 d8                	mov    %ebx,%eax
  40329c:	25 ff 00 00 00       	and    $0xff,%eax
  4032a1:	83 f8 0a             	cmp    $0xa,%eax
  4032a4:	75 07                	jne    4032ad <check+0x41>
  4032a6:	b8 00 00 00 00       	mov    $0x0,%eax
  4032ab:	eb 0f                	jmp    4032bc <check+0x50>
  4032ad:	83 45 f4 08          	addl   $0x8,-0xc(%rbp)
  4032b1:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%rbp)
  4032b5:	7e d7                	jle    40328e <check+0x22>
  4032b7:	b8 01 00 00 00       	mov    $0x1,%eax
  4032bc:	5b                   	pop    %rbx
  4032bd:	5d                   	pop    %rbp
  4032be:	c3                   	retq   

00000000004032bf <gencookie>:
  4032bf:	55                   	push   %rbp
  4032c0:	48 89 e5             	mov    %rsp,%rbp
  4032c3:	48 83 ec 20          	sub    $0x20,%rsp
  4032c7:	89 7d ec             	mov    %edi,-0x14(%rbp)
  4032ca:	8b 45 ec             	mov    -0x14(%rbp),%eax
  4032cd:	83 c0 01             	add    $0x1,%eax
  4032d0:	89 c7                	mov    %eax,%edi
  4032d2:	e8 b9 d9 ff ff       	callq  400c90 <srandom@plt>
  4032d7:	e8 e4 da ff ff       	callq  400dc0 <random@plt>
  4032dc:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4032df:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4032e2:	89 c7                	mov    %eax,%edi
  4032e4:	e8 83 ff ff ff       	callq  40326c <check>
  4032e9:	85 c0                	test   %eax,%eax
  4032eb:	74 ea                	je     4032d7 <gencookie+0x18>
  4032ed:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4032f0:	c9                   	leaveq 
  4032f1:	c3                   	retq   
  4032f2:	90                   	nop
  4032f3:	90                   	nop
  4032f4:	90                   	nop
  4032f5:	90                   	nop
  4032f6:	90                   	nop
  4032f7:	90                   	nop
  4032f8:	90                   	nop
  4032f9:	90                   	nop
  4032fa:	90                   	nop
  4032fb:	90                   	nop
  4032fc:	90                   	nop
  4032fd:	90                   	nop
  4032fe:	90                   	nop
  4032ff:	90                   	nop

0000000000403300 <__libc_csu_init>:
  403300:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  403305:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  40330a:	48 8d 2d 13 1b 20 00 	lea    0x201b13(%rip),%rbp        # 604e24 <__init_array_end>
  403311:	4c 8d 25 0c 1b 20 00 	lea    0x201b0c(%rip),%r12        # 604e24 <__init_array_end>
  403318:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  40331d:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  403322:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  403327:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  40332c:	48 83 ec 38          	sub    $0x38,%rsp
  403330:	4c 29 e5             	sub    %r12,%rbp
  403333:	41 89 fd             	mov    %edi,%r13d
  403336:	49 89 f6             	mov    %rsi,%r14
  403339:	48 c1 fd 03          	sar    $0x3,%rbp
  40333d:	49 89 d7             	mov    %rdx,%r15
  403340:	e8 fb d8 ff ff       	callq  400c40 <_init>
  403345:	48 85 ed             	test   %rbp,%rbp
  403348:	74 1c                	je     403366 <__libc_csu_init+0x66>
  40334a:	31 db                	xor    %ebx,%ebx
  40334c:	0f 1f 40 00          	nopl   0x0(%rax)
  403350:	4c 89 fa             	mov    %r15,%rdx
  403353:	4c 89 f6             	mov    %r14,%rsi
  403356:	44 89 ef             	mov    %r13d,%edi
  403359:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40335d:	48 83 c3 01          	add    $0x1,%rbx
  403361:	48 39 eb             	cmp    %rbp,%rbx
  403364:	75 ea                	jne    403350 <__libc_csu_init+0x50>
  403366:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40336b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  403370:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  403375:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40337a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40337f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  403384:	48 83 c4 38          	add    $0x38,%rsp
  403388:	c3                   	retq   
  403389:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000403390 <__libc_csu_fini>:
  403390:	f3 c3                	repz retq 
  403392:	90                   	nop
  403393:	90                   	nop
  403394:	90                   	nop
  403395:	90                   	nop
  403396:	90                   	nop
  403397:	90                   	nop
  403398:	90                   	nop
  403399:	90                   	nop
  40339a:	90                   	nop
  40339b:	90                   	nop
  40339c:	90                   	nop
  40339d:	90                   	nop
  40339e:	90                   	nop
  40339f:	90                   	nop

00000000004033a0 <__do_global_ctors_aux>:
  4033a0:	55                   	push   %rbp
  4033a1:	48 89 e5             	mov    %rsp,%rbp
  4033a4:	53                   	push   %rbx
  4033a5:	48 83 ec 08          	sub    $0x8,%rsp
  4033a9:	48 8b 05 78 1a 20 00 	mov    0x201a78(%rip),%rax        # 604e28 <__CTOR_LIST__>
  4033b0:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4033b4:	74 19                	je     4033cf <__do_global_ctors_aux+0x2f>
  4033b6:	bb 28 4e 60 00       	mov    $0x604e28,%ebx
  4033bb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  4033c0:	48 83 eb 08          	sub    $0x8,%rbx
  4033c4:	ff d0                	callq  *%rax
  4033c6:	48 8b 03             	mov    (%rbx),%rax
  4033c9:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  4033cd:	75 f1                	jne    4033c0 <__do_global_ctors_aux+0x20>
  4033cf:	48 83 c4 08          	add    $0x8,%rsp
  4033d3:	5b                   	pop    %rbx
  4033d4:	5d                   	pop    %rbp
  4033d5:	c3                   	retq   
  4033d6:	90                   	nop
  4033d7:	90                   	nop

Disassembly of section .fini:

00000000004033d8 <_fini>:
  4033d8:	48 83 ec 08          	sub    $0x8,%rsp
  4033dc:	e8 0f db ff ff       	callq  400ef0 <__do_global_dtors_aux>
  4033e1:	48 83 c4 08          	add    $0x8,%rsp
  4033e5:	c3                   	retq   
