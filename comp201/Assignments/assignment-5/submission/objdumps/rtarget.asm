
rtarget:     file format elf64-x86-64


Disassembly of section .init:

0000000000400c40 <_init>:
  400c40:	48 83 ec 08          	sub    $0x8,%rsp
  400c44:	e8 83 02 00 00       	callq  400ecc <call_gmon_start>
  400c49:	e8 12 03 00 00       	callq  400f60 <frame_dummy>
  400c4e:	e8 fd 29 00 00       	callq  403650 <__do_global_ctors_aux>
  400c53:	48 83 c4 08          	add    $0x8,%rsp
  400c57:	c3                   	retq   

Disassembly of section .plt:

0000000000400c60 <.plt>:
  400c60:	ff 35 8a 53 20 00    	pushq  0x20538a(%rip)        # 605ff0 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c66:	ff 25 8c 53 20 00    	jmpq   *0x20538c(%rip)        # 605ff8 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c6c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400c70 <strcasecmp@plt>:
  400c70:	ff 25 8a 53 20 00    	jmpq   *0x20538a(%rip)        # 606000 <strcasecmp@GLIBC_2.2.5>
  400c76:	68 00 00 00 00       	pushq  $0x0
  400c7b:	e9 e0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c80 <__errno_location@plt>:
  400c80:	ff 25 82 53 20 00    	jmpq   *0x205382(%rip)        # 606008 <__errno_location@GLIBC_2.2.5>
  400c86:	68 01 00 00 00       	pushq  $0x1
  400c8b:	e9 d0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400c90 <srandom@plt>:
  400c90:	ff 25 7a 53 20 00    	jmpq   *0x20537a(%rip)        # 606010 <srandom@GLIBC_2.2.5>
  400c96:	68 02 00 00 00       	pushq  $0x2
  400c9b:	e9 c0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ca0 <strncmp@plt>:
  400ca0:	ff 25 72 53 20 00    	jmpq   *0x205372(%rip)        # 606018 <strncmp@GLIBC_2.2.5>
  400ca6:	68 03 00 00 00       	pushq  $0x3
  400cab:	e9 b0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cb0 <strcpy@plt>:
  400cb0:	ff 25 6a 53 20 00    	jmpq   *0x20536a(%rip)        # 606020 <strcpy@GLIBC_2.2.5>
  400cb6:	68 04 00 00 00       	pushq  $0x4
  400cbb:	e9 a0 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cc0 <puts@plt>:
  400cc0:	ff 25 62 53 20 00    	jmpq   *0x205362(%rip)        # 606028 <puts@GLIBC_2.2.5>
  400cc6:	68 05 00 00 00       	pushq  $0x5
  400ccb:	e9 90 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cd0 <write@plt>:
  400cd0:	ff 25 5a 53 20 00    	jmpq   *0x20535a(%rip)        # 606030 <write@GLIBC_2.2.5>
  400cd6:	68 06 00 00 00       	pushq  $0x6
  400cdb:	e9 80 ff ff ff       	jmpq   400c60 <.plt>

0000000000400ce0 <__stack_chk_fail@plt>:
  400ce0:	ff 25 52 53 20 00    	jmpq   *0x205352(%rip)        # 606038 <__stack_chk_fail@GLIBC_2.4>
  400ce6:	68 07 00 00 00       	pushq  $0x7
  400ceb:	e9 70 ff ff ff       	jmpq   400c60 <.plt>

0000000000400cf0 <mmap@plt>:
  400cf0:	ff 25 4a 53 20 00    	jmpq   *0x20534a(%rip)        # 606040 <mmap@GLIBC_2.2.5>
  400cf6:	68 08 00 00 00       	pushq  $0x8
  400cfb:	e9 60 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d00 <htons@plt>:
  400d00:	ff 25 42 53 20 00    	jmpq   *0x205342(%rip)        # 606048 <htons@GLIBC_2.2.5>
  400d06:	68 09 00 00 00       	pushq  $0x9
  400d0b:	e9 50 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d10 <printf@plt>:
  400d10:	ff 25 3a 53 20 00    	jmpq   *0x20533a(%rip)        # 606050 <printf@GLIBC_2.2.5>
  400d16:	68 0a 00 00 00       	pushq  $0xa
  400d1b:	e9 40 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d20 <memset@plt>:
  400d20:	ff 25 32 53 20 00    	jmpq   *0x205332(%rip)        # 606058 <memset@GLIBC_2.2.5>
  400d26:	68 0b 00 00 00       	pushq  $0xb
  400d2b:	e9 30 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d30 <alarm@plt>:
  400d30:	ff 25 2a 53 20 00    	jmpq   *0x20532a(%rip)        # 606060 <alarm@GLIBC_2.2.5>
  400d36:	68 0c 00 00 00       	pushq  $0xc
  400d3b:	e9 20 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d40 <close@plt>:
  400d40:	ff 25 22 53 20 00    	jmpq   *0x205322(%rip)        # 606068 <close@GLIBC_2.2.5>
  400d46:	68 0d 00 00 00       	pushq  $0xd
  400d4b:	e9 10 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d50 <read@plt>:
  400d50:	ff 25 1a 53 20 00    	jmpq   *0x20531a(%rip)        # 606070 <read@GLIBC_2.2.5>
  400d56:	68 0e 00 00 00       	pushq  $0xe
  400d5b:	e9 00 ff ff ff       	jmpq   400c60 <.plt>

0000000000400d60 <__libc_start_main@plt>:
  400d60:	ff 25 12 53 20 00    	jmpq   *0x205312(%rip)        # 606078 <__libc_start_main@GLIBC_2.2.5>
  400d66:	68 0f 00 00 00       	pushq  $0xf
  400d6b:	e9 f0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d70 <signal@plt>:
  400d70:	ff 25 0a 53 20 00    	jmpq   *0x20530a(%rip)        # 606080 <signal@GLIBC_2.2.5>
  400d76:	68 10 00 00 00       	pushq  $0x10
  400d7b:	e9 e0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d80 <gethostbyname@plt>:
  400d80:	ff 25 02 53 20 00    	jmpq   *0x205302(%rip)        # 606088 <gethostbyname@GLIBC_2.2.5>
  400d86:	68 11 00 00 00       	pushq  $0x11
  400d8b:	e9 d0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400d90 <fprintf@plt>:
  400d90:	ff 25 fa 52 20 00    	jmpq   *0x2052fa(%rip)        # 606090 <fprintf@GLIBC_2.2.5>
  400d96:	68 12 00 00 00       	pushq  $0x12
  400d9b:	e9 c0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400da0 <memcpy@plt>:
  400da0:	ff 25 f2 52 20 00    	jmpq   *0x2052f2(%rip)        # 606098 <memcpy@GLIBC_2.14>
  400da6:	68 13 00 00 00       	pushq  $0x13
  400dab:	e9 b0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400db0 <time@plt>:
  400db0:	ff 25 ea 52 20 00    	jmpq   *0x2052ea(%rip)        # 6060a0 <time@GLIBC_2.2.5>
  400db6:	68 14 00 00 00       	pushq  $0x14
  400dbb:	e9 a0 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dc0 <random@plt>:
  400dc0:	ff 25 e2 52 20 00    	jmpq   *0x2052e2(%rip)        # 6060a8 <random@GLIBC_2.2.5>
  400dc6:	68 15 00 00 00       	pushq  $0x15
  400dcb:	e9 90 fe ff ff       	jmpq   400c60 <.plt>

0000000000400dd0 <_IO_getc@plt>:
  400dd0:	ff 25 da 52 20 00    	jmpq   *0x2052da(%rip)        # 6060b0 <_IO_getc@GLIBC_2.2.5>
  400dd6:	68 16 00 00 00       	pushq  $0x16
  400ddb:	e9 80 fe ff ff       	jmpq   400c60 <.plt>

0000000000400de0 <__isoc99_sscanf@plt>:
  400de0:	ff 25 d2 52 20 00    	jmpq   *0x2052d2(%rip)        # 6060b8 <__isoc99_sscanf@GLIBC_2.7>
  400de6:	68 17 00 00 00       	pushq  $0x17
  400deb:	e9 70 fe ff ff       	jmpq   400c60 <.plt>

0000000000400df0 <munmap@plt>:
  400df0:	ff 25 ca 52 20 00    	jmpq   *0x2052ca(%rip)        # 6060c0 <munmap@GLIBC_2.2.5>
  400df6:	68 18 00 00 00       	pushq  $0x18
  400dfb:	e9 60 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e00 <bcopy@plt>:
  400e00:	ff 25 c2 52 20 00    	jmpq   *0x2052c2(%rip)        # 6060c8 <bcopy@GLIBC_2.2.5>
  400e06:	68 19 00 00 00       	pushq  $0x19
  400e0b:	e9 50 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e10 <fopen@plt>:
  400e10:	ff 25 ba 52 20 00    	jmpq   *0x2052ba(%rip)        # 6060d0 <fopen@GLIBC_2.2.5>
  400e16:	68 1a 00 00 00       	pushq  $0x1a
  400e1b:	e9 40 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e20 <getopt@plt>:
  400e20:	ff 25 b2 52 20 00    	jmpq   *0x2052b2(%rip)        # 6060d8 <getopt@GLIBC_2.2.5>
  400e26:	68 1b 00 00 00       	pushq  $0x1b
  400e2b:	e9 30 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e30 <strtoul@plt>:
  400e30:	ff 25 aa 52 20 00    	jmpq   *0x2052aa(%rip)        # 6060e0 <strtoul@GLIBC_2.2.5>
  400e36:	68 1c 00 00 00       	pushq  $0x1c
  400e3b:	e9 20 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e40 <atoi@plt>:
  400e40:	ff 25 a2 52 20 00    	jmpq   *0x2052a2(%rip)        # 6060e8 <atoi@GLIBC_2.2.5>
  400e46:	68 1d 00 00 00       	pushq  $0x1d
  400e4b:	e9 10 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e50 <gethostname@plt>:
  400e50:	ff 25 9a 52 20 00    	jmpq   *0x20529a(%rip)        # 6060f0 <gethostname@GLIBC_2.2.5>
  400e56:	68 1e 00 00 00       	pushq  $0x1e
  400e5b:	e9 00 fe ff ff       	jmpq   400c60 <.plt>

0000000000400e60 <sprintf@plt>:
  400e60:	ff 25 92 52 20 00    	jmpq   *0x205292(%rip)        # 6060f8 <sprintf@GLIBC_2.2.5>
  400e66:	68 1f 00 00 00       	pushq  $0x1f
  400e6b:	e9 f0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 8a 52 20 00    	jmpq   *0x20528a(%rip)        # 606100 <exit@GLIBC_2.2.5>
  400e76:	68 20 00 00 00       	pushq  $0x20
  400e7b:	e9 e0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 82 52 20 00    	jmpq   *0x205282(%rip)        # 606108 <connect@GLIBC_2.2.5>
  400e86:	68 21 00 00 00       	pushq  $0x21
  400e8b:	e9 d0 fd ff ff       	jmpq   400c60 <.plt>

0000000000400e90 <socket@plt>:
  400e90:	ff 25 7a 52 20 00    	jmpq   *0x20527a(%rip)        # 606110 <socket@GLIBC_2.2.5>
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
  400eaf:	49 c7 c0 40 36 40 00 	mov    $0x403640,%r8
  400eb6:	48 c7 c1 b0 35 40 00 	mov    $0x4035b0,%rcx
  400ebd:	48 c7 c7 1a 12 40 00 	mov    $0x40121a,%rdi
  400ec4:	e8 97 fe ff ff       	callq  400d60 <__libc_start_main@plt>
  400ec9:	f4                   	hlt    
  400eca:	90                   	nop
  400ecb:	90                   	nop

0000000000400ecc <call_gmon_start>:
  400ecc:	48 83 ec 08          	sub    $0x8,%rsp
  400ed0:	48 8b 05 09 51 20 00 	mov    0x205109(%rip),%rax        # 605fe0 <__gmon_start__>
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
  400ef9:	80 3d b8 55 20 00 00 	cmpb   $0x0,0x2055b8(%rip)        # 6064b8 <completed.6531>
  400f00:	75 4b                	jne    400f4d <__do_global_dtors_aux+0x5d>
  400f02:	bb 40 5e 60 00       	mov    $0x605e40,%ebx
  400f07:	48 8b 05 b2 55 20 00 	mov    0x2055b2(%rip),%rax        # 6064c0 <dtor_idx.6533>
  400f0e:	48 81 eb 38 5e 60 00 	sub    $0x605e38,%rbx
  400f15:	48 c1 fb 03          	sar    $0x3,%rbx
  400f19:	48 83 eb 01          	sub    $0x1,%rbx
  400f1d:	48 39 d8             	cmp    %rbx,%rax
  400f20:	73 24                	jae    400f46 <__do_global_dtors_aux+0x56>
  400f22:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
  400f28:	48 83 c0 01          	add    $0x1,%rax
  400f2c:	48 89 05 8d 55 20 00 	mov    %rax,0x20558d(%rip)        # 6064c0 <dtor_idx.6533>
  400f33:	ff 14 c5 38 5e 60 00 	callq  *0x605e38(,%rax,8)
  400f3a:	48 8b 05 7f 55 20 00 	mov    0x20557f(%rip),%rax        # 6064c0 <dtor_idx.6533>
  400f41:	48 39 d8             	cmp    %rbx,%rax
  400f44:	72 e2                	jb     400f28 <__do_global_dtors_aux+0x38>
  400f46:	c6 05 6b 55 20 00 01 	movb   $0x1,0x20556b(%rip)        # 6064b8 <completed.6531>
  400f4d:	48 83 c4 08          	add    $0x8,%rsp
  400f51:	5b                   	pop    %rbx
  400f52:	5d                   	pop    %rbp
  400f53:	c3                   	retq   
  400f54:	66 66 66 2e 0f 1f 84 	data16 data16 nopw %cs:0x0(%rax,%rax,1)
  400f5b:	00 00 00 00 00 

0000000000400f60 <frame_dummy>:
  400f60:	48 83 3d e0 4e 20 00 	cmpq   $0x0,0x204ee0(%rip)        # 605e48 <__JCR_END__>
  400f67:	00 
  400f68:	55                   	push   %rbp
  400f69:	48 89 e5             	mov    %rsp,%rbp
  400f6c:	74 12                	je     400f80 <frame_dummy+0x20>
  400f6e:	b8 00 00 00 00       	mov    $0x0,%eax
  400f73:	48 85 c0             	test   %rax,%rax
  400f76:	74 08                	je     400f80 <frame_dummy+0x20>
  400f78:	5d                   	pop    %rbp
  400f79:	bf 48 5e 60 00       	mov    $0x605e48,%edi
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
  400fb0:	89 05 3a 55 20 00    	mov    %eax,0x20553a(%rip)        # 6064f0 <check_level>
  400fb6:	8b 05 b4 54 20 00    	mov    0x2054b4(%rip),%eax        # 606470 <target_id>
  400fbc:	89 c7                	mov    %eax,%edi
  400fbe:	e8 ac 25 00 00       	callq  40356f <gencookie>
  400fc3:	89 05 1b 55 20 00    	mov    %eax,0x20551b(%rip)        # 6064e4 <cookie>
  400fc9:	8b 05 15 55 20 00    	mov    0x205515(%rip),%eax        # 6064e4 <cookie>
  400fcf:	89 c7                	mov    %eax,%edi
  400fd1:	e8 99 25 00 00       	callq  40356f <gencookie>
  400fd6:	89 05 0c 55 20 00    	mov    %eax,0x20550c(%rip)        # 6064e8 <authkey>
  400fdc:	8b 05 8e 54 20 00    	mov    0x20548e(%rip),%eax        # 606470 <target_id>
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
  401048:	48 89 05 39 54 20 00 	mov    %rax,0x205439(%rip)        # 606488 <buf_offset>
  40104f:	c6 05 ce 60 20 00 72 	movb   $0x72,0x2060ce(%rip)        # 607124 <target_prefix>
  401056:	8b 05 24 54 20 00    	mov    0x205424(%rip),%eax        # 606480 <notify>
  40105c:	85 c0                	test   %eax,%eax
  40105e:	0f 84 06 01 00 00    	je     40116a <initialize_target+0x1e6>
  401064:	8b 05 76 54 20 00    	mov    0x205476(%rip),%eax        # 6064e0 <is_checker>
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
  401094:	bf a0 36 40 00       	mov    $0x4036a0,%edi
  401099:	e8 22 fc ff ff       	callq  400cc0 <puts@plt>
  40109e:	bf 08 00 00 00       	mov    $0x8,%edi
  4010a3:	e8 c8 fd ff ff       	callq  400e70 <exit@plt>
  4010a8:	c7 85 e4 de ff ff 00 	movl   $0x0,-0x211c(%rbp)
  4010af:	00 00 00 
  4010b2:	eb 39                	jmp    4010ed <initialize_target+0x169>
  4010b4:	8b 85 e4 de ff ff    	mov    -0x211c(%rbp),%eax
  4010ba:	48 98                	cltq   
  4010bc:	48 8b 04 c5 40 61 60 	mov    0x606140(,%rax,8),%rax
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
  4010f5:	48 8b 04 c5 40 61 60 	mov    0x606140(,%rax,8),%rax
  4010fc:	00 
  4010fd:	48 85 c0             	test   %rax,%rax
  401100:	75 b2                	jne    4010b4 <initialize_target+0x130>
  401102:	83 bd e8 de ff ff 00 	cmpl   $0x0,-0x2118(%rbp)
  401109:	75 26                	jne    401131 <initialize_target+0x1ad>
  40110b:	b8 d8 36 40 00       	mov    $0x4036d8,%eax
  401110:	48 8d 95 f0 fe ff ff 	lea    -0x110(%rbp),%rdx
  401117:	48 89 d6             	mov    %rdx,%rsi
  40111a:	48 89 c7             	mov    %rax,%rdi
  40111d:	b8 00 00 00 00       	mov    $0x0,%eax
  401122:	e8 e9 fb ff ff       	callq  400d10 <printf@plt>
  401127:	bf 08 00 00 00       	mov    $0x8,%edi
  40112c:	e8 3f fd ff ff       	callq  400e70 <exit@plt>
  401131:	48 8d 85 f0 de ff ff 	lea    -0x2110(%rbp),%rax
  401138:	48 89 c7             	mov    %rax,%rdi
  40113b:	e8 f2 20 00 00       	callq  403232 <init_driver>
  401140:	85 c0                	test   %eax,%eax
  401142:	79 26                	jns    40116a <initialize_target+0x1e6>
  401144:	b8 18 37 40 00       	mov    $0x403718,%eax
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
  40118c:	8b 05 4e 53 20 00    	mov    0x20534e(%rip),%eax        # 6064e0 <is_checker>
  401192:	85 c0                	test   %eax,%eax
  401194:	74 43                	je     4011d9 <usage+0x59>
  401196:	b8 40 37 40 00       	mov    $0x403740,%eax
  40119b:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  40119f:	48 89 d6             	mov    %rdx,%rsi
  4011a2:	48 89 c7             	mov    %rax,%rdi
  4011a5:	b8 00 00 00 00       	mov    $0x0,%eax
  4011aa:	e8 61 fb ff ff       	callq  400d10 <printf@plt>
  4011af:	bf 78 37 40 00       	mov    $0x403778,%edi
  4011b4:	e8 07 fb ff ff       	callq  400cc0 <puts@plt>
  4011b9:	bf 9e 37 40 00       	mov    $0x40379e,%edi
  4011be:	e8 fd fa ff ff       	callq  400cc0 <puts@plt>
  4011c3:	bf b8 37 40 00       	mov    $0x4037b8,%edi
  4011c8:	e8 f3 fa ff ff       	callq  400cc0 <puts@plt>
  4011cd:	bf da 37 40 00       	mov    $0x4037da,%edi
  4011d2:	e8 e9 fa ff ff       	callq  400cc0 <puts@plt>
  4011d7:	eb 37                	jmp    401210 <usage+0x90>
  4011d9:	b8 f6 37 40 00       	mov    $0x4037f6,%eax
  4011de:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4011e2:	48 89 d6             	mov    %rdx,%rsi
  4011e5:	48 89 c7             	mov    %rax,%rdi
  4011e8:	b8 00 00 00 00       	mov    $0x0,%eax
  4011ed:	e8 1e fb ff ff       	callq  400d10 <printf@plt>
  4011f2:	bf 18 38 40 00       	mov    $0x403818,%edi
  4011f7:	e8 c4 fa ff ff       	callq  400cc0 <puts@plt>
  4011fc:	bf 40 38 40 00       	mov    $0x403840,%edi
  401201:	e8 ba fa ff ff       	callq  400cc0 <puts@plt>
  401206:	bf 6c 38 40 00       	mov    $0x40386c,%edi
  40120b:	e8 b0 fa ff ff       	callq  400cc0 <puts@plt>
  401210:	bf 00 00 00 00       	mov    $0x0,%edi
  401215:	e8 56 fc ff ff       	callq  400e70 <exit@plt>

000000000040121a <main>:
  40121a:	55                   	push   %rbp
  40121b:	48 89 e5             	mov    %rsp,%rbp
  40121e:	48 83 ec 30          	sub    $0x30,%rsp
  401222:	89 7d dc             	mov    %edi,-0x24(%rbp)
  401225:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  401229:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
  401230:	48 c7 45 e8 85 38 40 	movq   $0x403885,-0x18(%rbp)
  401237:	00 
  401238:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%rbp)
  40123f:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  401246:	be fc 22 40 00       	mov    $0x4022fc,%esi
  40124b:	bf 0b 00 00 00       	mov    $0xb,%edi
  401250:	e8 1b fb ff ff       	callq  400d70 <signal@plt>
  401255:	be a4 22 40 00       	mov    $0x4022a4,%esi
  40125a:	bf 07 00 00 00       	mov    $0x7,%edi
  40125f:	e8 0c fb ff ff       	callq  400d70 <signal@plt>
  401264:	be 54 23 40 00       	mov    $0x402354,%esi
  401269:	bf 04 00 00 00       	mov    $0x4,%edi
  40126e:	e8 fd fa ff ff       	callq  400d70 <signal@plt>
  401273:	8b 05 67 52 20 00    	mov    0x205267(%rip),%eax        # 6064e0 <is_checker>
  401279:	85 c0                	test   %eax,%eax
  40127b:	74 21                	je     40129e <main+0x84>
  40127d:	be ac 23 40 00       	mov    $0x4023ac,%esi
  401282:	bf 0e 00 00 00       	mov    $0xe,%edi
  401287:	e8 e4 fa ff ff       	callq  400d70 <signal@plt>
  40128c:	bf 05 00 00 00       	mov    $0x5,%edi
  401291:	e8 9a fa ff ff       	callq  400d30 <alarm@plt>
  401296:	48 c7 45 e8 8a 38 40 	movq   $0x40388a,-0x18(%rbp)
  40129d:	00 
  40129e:	48 8b 05 fb 51 20 00 	mov    0x2051fb(%rip),%rax        # 6064a0 <__bss_start>
  4012a5:	48 89 05 4c 52 20 00 	mov    %rax,0x20524c(%rip)        # 6064f8 <infile>
  4012ac:	e9 f3 00 00 00       	jmpq   4013a4 <main+0x18a>
  4012b1:	0f be 45 ff          	movsbl -0x1(%rbp),%eax
  4012b5:	83 e8 61             	sub    $0x61,%eax
  4012b8:	83 f8 10             	cmp    $0x10,%eax
  4012bb:	0f 87 b9 00 00 00    	ja     40137a <main+0x160>
  4012c1:	89 c0                	mov    %eax,%eax
  4012c3:	48 8b 04 c5 08 39 40 	mov    0x403908(,%rax,8),%rax
  4012ca:	00 
  4012cb:	ff e0                	jmpq   *%rax
  4012cd:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4012d1:	48 8b 00             	mov    (%rax),%rax
  4012d4:	48 89 c7             	mov    %rax,%rdi
  4012d7:	e8 a4 fe ff ff       	callq  401180 <usage>
  4012dc:	e9 c3 00 00 00       	jmpq   4013a4 <main+0x18a>
  4012e1:	ba 92 38 40 00       	mov    $0x403892,%edx
  4012e6:	48 8b 05 bb 51 20 00 	mov    0x2051bb(%rip),%rax        # 6064a8 <optarg@@GLIBC_2.2.5>
  4012ed:	48 89 d6             	mov    %rdx,%rsi
  4012f0:	48 89 c7             	mov    %rax,%rdi
  4012f3:	e8 18 fb ff ff       	callq  400e10 <fopen@plt>
  4012f8:	48 89 05 f9 51 20 00 	mov    %rax,0x2051f9(%rip)        # 6064f8 <infile>
  4012ff:	48 8b 05 f2 51 20 00 	mov    0x2051f2(%rip),%rax        # 6064f8 <infile>
  401306:	48 85 c0             	test   %rax,%rax
  401309:	0f 85 94 00 00 00    	jne    4013a3 <main+0x189>
  40130f:	48 8b 15 92 51 20 00 	mov    0x205192(%rip),%rdx        # 6064a8 <optarg@@GLIBC_2.2.5>
  401316:	b9 94 38 40 00       	mov    $0x403894,%ecx
  40131b:	48 8b 05 8e 51 20 00 	mov    0x20518e(%rip),%rax        # 6064b0 <stderr@@GLIBC_2.2.5>
  401322:	48 89 ce             	mov    %rcx,%rsi
  401325:	48 89 c7             	mov    %rax,%rdi
  401328:	b8 00 00 00 00       	mov    $0x0,%eax
  40132d:	e8 5e fa ff ff       	callq  400d90 <fprintf@plt>
  401332:	b8 01 00 00 00       	mov    $0x1,%eax
  401337:	e9 1b 01 00 00       	jmpq   401457 <main+0x23d>
  40133c:	48 8b 05 65 51 20 00 	mov    0x205165(%rip),%rax        # 6064a8 <optarg@@GLIBC_2.2.5>
  401343:	ba 10 00 00 00       	mov    $0x10,%edx
  401348:	be 00 00 00 00       	mov    $0x0,%esi
  40134d:	48 89 c7             	mov    %rax,%rdi
  401350:	e8 db fa ff ff       	callq  400e30 <strtoul@plt>
  401355:	89 45 f0             	mov    %eax,-0x10(%rbp)
  401358:	eb 4a                	jmp    4013a4 <main+0x18a>
  40135a:	48 8b 05 47 51 20 00 	mov    0x205147(%rip),%rax        # 6064a8 <optarg@@GLIBC_2.2.5>
  401361:	48 89 c7             	mov    %rax,%rdi
  401364:	e8 d7 fa ff ff       	callq  400e40 <atoi@plt>
  401369:	89 45 f4             	mov    %eax,-0xc(%rbp)
  40136c:	eb 36                	jmp    4013a4 <main+0x18a>
  40136e:	c7 05 08 51 20 00 00 	movl   $0x0,0x205108(%rip)        # 606480 <notify>
  401375:	00 00 00 
  401378:	eb 2a                	jmp    4013a4 <main+0x18a>
  40137a:	0f be 55 ff          	movsbl -0x1(%rbp),%edx
  40137e:	b8 b1 38 40 00       	mov    $0x4038b1,%eax
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
  4013dc:	8b 05 fe 50 20 00    	mov    0x2050fe(%rip),%eax        # 6064e0 <is_checker>
  4013e2:	85 c0                	test   %eax,%eax
  4013e4:	74 2c                	je     401412 <main+0x1f8>
  4013e6:	8b 05 fc 50 20 00    	mov    0x2050fc(%rip),%eax        # 6064e8 <authkey>
  4013ec:	39 45 f0             	cmp    %eax,-0x10(%rbp)
  4013ef:	74 21                	je     401412 <main+0x1f8>
  4013f1:	b8 c8 38 40 00       	mov    $0x4038c8,%eax
  4013f6:	8b 55 f0             	mov    -0x10(%rbp),%edx
  4013f9:	89 d6                	mov    %edx,%esi
  4013fb:	48 89 c7             	mov    %rax,%rdi
  4013fe:	b8 00 00 00 00       	mov    $0x0,%eax
  401403:	e8 08 f9 ff ff       	callq  400d10 <printf@plt>
  401408:	b8 00 00 00 00       	mov    $0x0,%eax
  40140d:	e8 d5 0a 00 00       	callq  401ee7 <check_fail>
  401412:	8b 15 cc 50 20 00    	mov    0x2050cc(%rip),%edx        # 6064e4 <cookie>
  401418:	b8 f8 38 40 00       	mov    $0x4038f8,%eax
  40141d:	89 d6                	mov    %edx,%esi
  40141f:	48 89 c7             	mov    %rax,%rdi
  401422:	b8 00 00 00 00       	mov    $0x0,%eax
  401427:	e8 e4 f8 ff ff       	callq  400d10 <printf@plt>
  40142c:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  401430:	74 11                	je     401443 <main+0x229>
  401432:	48 8b 05 4f 50 20 00 	mov    0x20504f(%rip),%rax        # 606488 <buf_offset>
  401439:	48 89 c7             	mov    %rax,%rdi
  40143c:	e8 8b 10 00 00       	callq  4024cc <stable_launch>
  401441:	eb 0f                	jmp    401452 <main+0x238>
  401443:	48 8b 05 3e 50 20 00 	mov    0x20503e(%rip),%rax        # 606488 <buf_offset>
  40144a:	48 89 c7             	mov    %rax,%rdi
  40144d:	e8 b5 0f 00 00       	callq  402407 <launch>
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
  401913:	e8 e4 06 00 00       	callq  401ffc <Gets>
  401918:	b8 01 00 00 00       	mov    $0x1,%eax
  40191d:	c9                   	leaveq 
  40191e:	c3                   	retq   
  40191f:	90                   	nop

0000000000401920 <touch1>:
  401920:	55                   	push   %rbp
  401921:	48 89 e5             	mov    %rsp,%rbp
  401924:	c7 05 be 4b 20 00 01 	movl   $0x1,0x204bbe(%rip)        # 6064ec <vlevel>
  40192b:	00 00 00 
  40192e:	bf 68 3a 40 00       	mov    $0x403a68,%edi
  401933:	e8 88 f3 ff ff       	callq  400cc0 <puts@plt>
  401938:	bf 01 00 00 00       	mov    $0x1,%edi
  40193d:	e8 ba 04 00 00       	callq  401dfc <validate>
  401942:	bf 00 00 00 00       	mov    $0x0,%edi
  401947:	e8 24 f5 ff ff       	callq  400e70 <exit@plt>

000000000040194c <touch2>:
  40194c:	55                   	push   %rbp
  40194d:	48 89 e5             	mov    %rsp,%rbp
  401950:	48 83 ec 10          	sub    $0x10,%rsp
  401954:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401957:	c7 05 8b 4b 20 00 02 	movl   $0x2,0x204b8b(%rip)        # 6064ec <vlevel>
  40195e:	00 00 00 
  401961:	8b 05 7d 4b 20 00    	mov    0x204b7d(%rip),%eax        # 6064e4 <cookie>
  401967:	39 45 fc             	cmp    %eax,-0x4(%rbp)
  40196a:	75 23                	jne    40198f <touch2+0x43>
  40196c:	b8 88 3a 40 00       	mov    $0x403a88,%eax
  401971:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401974:	89 d6                	mov    %edx,%esi
  401976:	48 89 c7             	mov    %rax,%rdi
  401979:	b8 00 00 00 00       	mov    $0x0,%eax
  40197e:	e8 8d f3 ff ff       	callq  400d10 <printf@plt>
  401983:	bf 02 00 00 00       	mov    $0x2,%edi
  401988:	e8 6f 04 00 00       	callq  401dfc <validate>
  40198d:	eb 21                	jmp    4019b0 <touch2+0x64>
  40198f:	b8 b0 3a 40 00       	mov    $0x403ab0,%eax
  401994:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401997:	89 d6                	mov    %edx,%esi
  401999:	48 89 c7             	mov    %rax,%rdi
  40199c:	b8 00 00 00 00       	mov    $0x0,%eax
  4019a1:	e8 6a f3 ff ff       	callq  400d10 <printf@plt>
  4019a6:	bf 02 00 00 00       	mov    $0x2,%edi
  4019ab:	e8 6c 05 00 00       	callq  401f1c <fail>
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
  401a3e:	b9 d4 3a 40 00       	mov    $0x403ad4,%ecx
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
  401aa8:	c7 05 3a 4a 20 00 03 	movl   $0x3,0x204a3a(%rip)        # 6064ec <vlevel>
  401aaf:	00 00 00 
  401ab2:	8b 05 2c 4a 20 00    	mov    0x204a2c(%rip),%eax        # 6064e4 <cookie>
  401ab8:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401abc:	48 89 d6             	mov    %rdx,%rsi
  401abf:	89 c7                	mov    %eax,%edi
  401ac1:	e8 f4 fe ff ff       	callq  4019ba <hexmatch>
  401ac6:	85 c0                	test   %eax,%eax
  401ac8:	74 25                	je     401aef <touch3+0x53>
  401aca:	b8 e0 3a 40 00       	mov    $0x403ae0,%eax
  401acf:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401ad3:	48 89 d6             	mov    %rdx,%rsi
  401ad6:	48 89 c7             	mov    %rax,%rdi
  401ad9:	b8 00 00 00 00       	mov    $0x0,%eax
  401ade:	e8 2d f2 ff ff       	callq  400d10 <printf@plt>
  401ae3:	bf 03 00 00 00       	mov    $0x3,%edi
  401ae8:	e8 0f 03 00 00       	callq  401dfc <validate>
  401aed:	eb 23                	jmp    401b12 <touch3+0x76>
  401aef:	b8 08 3b 40 00       	mov    $0x403b08,%eax
  401af4:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401af8:	48 89 d6             	mov    %rdx,%rsi
  401afb:	48 89 c7             	mov    %rax,%rdi
  401afe:	b8 00 00 00 00       	mov    $0x0,%eax
  401b03:	e8 08 f2 ff ff       	callq  400d10 <printf@plt>
  401b08:	bf 03 00 00 00       	mov    $0x3,%edi
  401b0d:	e8 0a 04 00 00       	callq  401f1c <fail>
  401b12:	bf 00 00 00 00       	mov    $0x0,%edi
  401b17:	e8 54 f3 ff ff       	callq  400e70 <exit@plt>

0000000000401b1c <test>:
  401b1c:	55                   	push   %rbp
  401b1d:	48 89 e5             	mov    %rsp,%rbp
  401b20:	48 83 ec 10          	sub    $0x10,%rsp
  401b24:	b8 00 00 00 00       	mov    $0x0,%eax
  401b29:	e8 d6 fd ff ff       	callq  401904 <getbuf>
  401b2e:	89 45 fc             	mov    %eax,-0x4(%rbp)
  401b31:	b8 30 3b 40 00       	mov    $0x403b30,%eax
  401b36:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401b39:	89 d6                	mov    %edx,%esi
  401b3b:	48 89 c7             	mov    %rax,%rdi
  401b3e:	b8 00 00 00 00       	mov    $0x0,%eax
  401b43:	e8 c8 f1 ff ff       	callq  400d10 <printf@plt>
  401b48:	c9                   	leaveq 
  401b49:	c3                   	retq   
  401b4a:	90                   	nop
  401b4b:	90                   	nop

0000000000401b4c <start_farm>:
  401b4c:	55                   	push   %rbp
  401b4d:	48 89 e5             	mov    %rsp,%rbp
  401b50:	b8 01 00 00 00       	mov    $0x1,%eax
  401b55:	5d                   	pop    %rbp
  401b56:	c3                   	retq   

0000000000401b57 <getval_465>:
  401b57:	55                   	push   %rbp
  401b58:	48 89 e5             	mov    %rsp,%rbp
  401b5b:	b8 4c 89 c7 c3       	mov    $0xc3c7894c,%eax
  401b60:	5d                   	pop    %rbp
  401b61:	c3                   	retq   

0000000000401b62 <setval_137>:
  401b62:	55                   	push   %rbp
  401b63:	48 89 e5             	mov    %rsp,%rbp
  401b66:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b6a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b6e:	c7 00 48 89 c7 90    	movl   $0x90c78948,(%rax)
  401b74:	5d                   	pop    %rbp
  401b75:	c3                   	retq   

0000000000401b76 <setval_365>:
  401b76:	55                   	push   %rbp
  401b77:	48 89 e5             	mov    %rsp,%rbp
  401b7a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b7e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b82:	c7 00 48 89 c7 92    	movl   $0x92c78948,(%rax)
  401b88:	5d                   	pop    %rbp
  401b89:	c3                   	retq   

0000000000401b8a <setval_123>:
  401b8a:	55                   	push   %rbp
  401b8b:	48 89 e5             	mov    %rsp,%rbp
  401b8e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401b92:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401b96:	c7 00 08 58 90 90    	movl   $0x90905808,(%rax)
  401b9c:	5d                   	pop    %rbp
  401b9d:	c3                   	retq   

0000000000401b9e <addval_307>:
  401b9e:	55                   	push   %rbp
  401b9f:	48 89 e5             	mov    %rsp,%rbp
  401ba2:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401ba5:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401ba8:	2d 67 a7 6f 3c       	sub    $0x3c6fa767,%eax
  401bad:	5d                   	pop    %rbp
  401bae:	c3                   	retq   

0000000000401baf <getval_165>:
  401baf:	55                   	push   %rbp
  401bb0:	48 89 e5             	mov    %rsp,%rbp
  401bb3:	b8 6e 50 c3 ce       	mov    $0xcec3506e,%eax
  401bb8:	5d                   	pop    %rbp
  401bb9:	c3                   	retq   

0000000000401bba <addval_115>:
  401bba:	55                   	push   %rbp
  401bbb:	48 89 e5             	mov    %rsp,%rbp
  401bbe:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401bc1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401bc4:	2d b8 76 38 6f       	sub    $0x6f3876b8,%eax
  401bc9:	5d                   	pop    %rbp
  401bca:	c3                   	retq   

0000000000401bcb <addval_273>:
  401bcb:	55                   	push   %rbp
  401bcc:	48 89 e5             	mov    %rsp,%rbp
  401bcf:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401bd2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401bd5:	2d fc ff a7 6e       	sub    $0x6ea7fffc,%eax
  401bda:	5d                   	pop    %rbp
  401bdb:	c3                   	retq   

0000000000401bdc <mid_farm>:
  401bdc:	55                   	push   %rbp
  401bdd:	48 89 e5             	mov    %rsp,%rbp
  401be0:	b8 01 00 00 00       	mov    $0x1,%eax
  401be5:	5d                   	pop    %rbp
  401be6:	c3                   	retq   

0000000000401be7 <add_xy>:
  401be7:	55                   	push   %rbp
  401be8:	48 89 e5             	mov    %rsp,%rbp
  401beb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401bef:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  401bf3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  401bf7:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  401bfb:	48 01 d0             	add    %rdx,%rax
  401bfe:	5d                   	pop    %rbp
  401bff:	c3                   	retq   

0000000000401c00 <setval_154>:
  401c00:	55                   	push   %rbp
  401c01:	48 89 e5             	mov    %rsp,%rbp
  401c04:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c08:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c0c:	c7 00 89 d1 20 db    	movl   $0xdb20d189,(%rax)
  401c12:	5d                   	pop    %rbp
  401c13:	c3                   	retq   

0000000000401c14 <setval_377>:
  401c14:	55                   	push   %rbp
  401c15:	48 89 e5             	mov    %rsp,%rbp
  401c18:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c1c:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c20:	c7 00 8d c2 38 d2    	movl   $0xd238c28d,(%rax)
  401c26:	5d                   	pop    %rbp
  401c27:	c3                   	retq   

0000000000401c28 <getval_239>:
  401c28:	55                   	push   %rbp
  401c29:	48 89 e5             	mov    %rsp,%rbp
  401c2c:	b8 48 89 e0 c1       	mov    $0xc1e08948,%eax
  401c31:	5d                   	pop    %rbp
  401c32:	c3                   	retq   

0000000000401c33 <addval_416>:
  401c33:	55                   	push   %rbp
  401c34:	48 89 e5             	mov    %rsp,%rbp
  401c37:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401c3a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401c3d:	2d b8 76 1f 3d       	sub    $0x3d1f76b8,%eax
  401c42:	5d                   	pop    %rbp
  401c43:	c3                   	retq   

0000000000401c44 <getval_248>:
  401c44:	55                   	push   %rbp
  401c45:	48 89 e5             	mov    %rsp,%rbp
  401c48:	b8 09 d1 c3 18       	mov    $0x18c3d109,%eax
  401c4d:	5d                   	pop    %rbp
  401c4e:	c3                   	retq   

0000000000401c4f <getval_339>:
  401c4f:	55                   	push   %rbp
  401c50:	48 89 e5             	mov    %rsp,%rbp
  401c53:	b8 89 d1 90 c1       	mov    $0xc190d189,%eax
  401c58:	5d                   	pop    %rbp
  401c59:	c3                   	retq   

0000000000401c5a <setval_498>:
  401c5a:	55                   	push   %rbp
  401c5b:	48 89 e5             	mov    %rsp,%rbp
  401c5e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c62:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c66:	c7 00 89 ce a4 c0    	movl   $0xc0a4ce89,(%rax)
  401c6c:	5d                   	pop    %rbp
  401c6d:	c3                   	retq   

0000000000401c6e <getval_386>:
  401c6e:	55                   	push   %rbp
  401c6f:	48 89 e5             	mov    %rsp,%rbp
  401c72:	b8 a9 d1 08 db       	mov    $0xdb08d1a9,%eax
  401c77:	5d                   	pop    %rbp
  401c78:	c3                   	retq   

0000000000401c79 <setval_212>:
  401c79:	55                   	push   %rbp
  401c7a:	48 89 e5             	mov    %rsp,%rbp
  401c7d:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c81:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c85:	c7 00 c8 89 e0 c3    	movl   $0xc3e089c8,(%rax)
  401c8b:	5d                   	pop    %rbp
  401c8c:	c3                   	retq   

0000000000401c8d <setval_464>:
  401c8d:	55                   	push   %rbp
  401c8e:	48 89 e5             	mov    %rsp,%rbp
  401c91:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401c95:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401c99:	c7 00 89 ce 18 db    	movl   $0xdb18ce89,(%rax)
  401c9f:	5d                   	pop    %rbp
  401ca0:	c3                   	retq   

0000000000401ca1 <getval_150>:
  401ca1:	55                   	push   %rbp
  401ca2:	48 89 e5             	mov    %rsp,%rbp
  401ca5:	b8 89 c2 c4 d2       	mov    $0xd2c4c289,%eax
  401caa:	5d                   	pop    %rbp
  401cab:	c3                   	retq   

0000000000401cac <getval_352>:
  401cac:	55                   	push   %rbp
  401cad:	48 89 e5             	mov    %rsp,%rbp
  401cb0:	b8 48 89 e0 90       	mov    $0x90e08948,%eax
  401cb5:	5d                   	pop    %rbp
  401cb6:	c3                   	retq   

0000000000401cb7 <setval_252>:
  401cb7:	55                   	push   %rbp
  401cb8:	48 89 e5             	mov    %rsp,%rbp
  401cbb:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401cbf:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401cc3:	c7 00 89 ce 00 d2    	movl   $0xd200ce89,(%rax)
  401cc9:	5d                   	pop    %rbp
  401cca:	c3                   	retq   

0000000000401ccb <setval_271>:
  401ccb:	55                   	push   %rbp
  401ccc:	48 89 e5             	mov    %rsp,%rbp
  401ccf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401cd3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401cd7:	c7 00 c9 ce 20 d2    	movl   $0xd220cec9,(%rax)
  401cdd:	5d                   	pop    %rbp
  401cde:	c3                   	retq   

0000000000401cdf <getval_402>:
  401cdf:	55                   	push   %rbp
  401ce0:	48 89 e5             	mov    %rsp,%rbp
  401ce3:	b8 89 d1 60 d2       	mov    $0xd260d189,%eax
  401ce8:	5d                   	pop    %rbp
  401ce9:	c3                   	retq   

0000000000401cea <addval_395>:
  401cea:	55                   	push   %rbp
  401ceb:	48 89 e5             	mov    %rsp,%rbp
  401cee:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401cf1:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401cf4:	2d 77 3d 6b 2d       	sub    $0x2d6b3d77,%eax
  401cf9:	5d                   	pop    %rbp
  401cfa:	c3                   	retq   

0000000000401cfb <setval_280>:
  401cfb:	55                   	push   %rbp
  401cfc:	48 89 e5             	mov    %rsp,%rbp
  401cff:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d03:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d07:	c7 00 7f 48 a9 e0    	movl   $0xe0a9487f,(%rax)
  401d0d:	5d                   	pop    %rbp
  401d0e:	c3                   	retq   

0000000000401d0f <setval_430>:
  401d0f:	55                   	push   %rbp
  401d10:	48 89 e5             	mov    %rsp,%rbp
  401d13:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d17:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d1b:	c7 00 89 ce a4 c9    	movl   $0xc9a4ce89,(%rax)
  401d21:	5d                   	pop    %rbp
  401d22:	c3                   	retq   

0000000000401d23 <getval_285>:
  401d23:	55                   	push   %rbp
  401d24:	48 89 e5             	mov    %rsp,%rbp
  401d27:	b8 89 d1 20 c9       	mov    $0xc920d189,%eax
  401d2c:	5d                   	pop    %rbp
  401d2d:	c3                   	retq   

0000000000401d2e <getval_438>:
  401d2e:	55                   	push   %rbp
  401d2f:	48 89 e5             	mov    %rsp,%rbp
  401d32:	b8 89 ce 08 d2       	mov    $0xd208ce89,%eax
  401d37:	5d                   	pop    %rbp
  401d38:	c3                   	retq   

0000000000401d39 <addval_378>:
  401d39:	55                   	push   %rbp
  401d3a:	48 89 e5             	mov    %rsp,%rbp
  401d3d:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401d40:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401d43:	2d 77 3d 6f 38       	sub    $0x386f3d77,%eax
  401d48:	5d                   	pop    %rbp
  401d49:	c3                   	retq   

0000000000401d4a <getval_270>:
  401d4a:	55                   	push   %rbp
  401d4b:	48 89 e5             	mov    %rsp,%rbp
  401d4e:	b8 4c 89 e0 c3       	mov    $0xc3e0894c,%eax
  401d53:	5d                   	pop    %rbp
  401d54:	c3                   	retq   

0000000000401d55 <addval_152>:
  401d55:	55                   	push   %rbp
  401d56:	48 89 e5             	mov    %rsp,%rbp
  401d59:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401d5c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401d5f:	2d 77 3d 6f 3c       	sub    $0x3c6f3d77,%eax
  401d64:	5d                   	pop    %rbp
  401d65:	c3                   	retq   

0000000000401d66 <getval_403>:
  401d66:	55                   	push   %rbp
  401d67:	48 89 e5             	mov    %rsp,%rbp
  401d6a:	b8 49 89 e0 c3       	mov    $0xc3e08949,%eax
  401d6f:	5d                   	pop    %rbp
  401d70:	c3                   	retq   

0000000000401d71 <setval_136>:
  401d71:	55                   	push   %rbp
  401d72:	48 89 e5             	mov    %rsp,%rbp
  401d75:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401d79:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401d7d:	c7 00 89 ce c4 d2    	movl   $0xd2c4ce89,(%rax)
  401d83:	5d                   	pop    %rbp
  401d84:	c3                   	retq   

0000000000401d85 <getval_302>:
  401d85:	55                   	push   %rbp
  401d86:	48 89 e5             	mov    %rsp,%rbp
  401d89:	b8 48 89 e0 c3       	mov    $0xc3e08948,%eax
  401d8e:	5d                   	pop    %rbp
  401d8f:	c3                   	retq   

0000000000401d90 <getval_258>:
  401d90:	55                   	push   %rbp
  401d91:	48 89 e5             	mov    %rsp,%rbp
  401d94:	b8 89 c2 08 db       	mov    $0xdb08c289,%eax
  401d99:	5d                   	pop    %rbp
  401d9a:	c3                   	retq   

0000000000401d9b <addval_325>:
  401d9b:	55                   	push   %rbp
  401d9c:	48 89 e5             	mov    %rsp,%rbp
  401d9f:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401da2:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401da5:	2d ec 76 3d 6e       	sub    $0x6e3d76ec,%eax
  401daa:	5d                   	pop    %rbp
  401dab:	c3                   	retq   

0000000000401dac <setval_497>:
  401dac:	55                   	push   %rbp
  401dad:	48 89 e5             	mov    %rsp,%rbp
  401db0:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401db4:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401db8:	c7 00 89 c2 60 c0    	movl   $0xc060c289,(%rax)
  401dbe:	5d                   	pop    %rbp
  401dbf:	c3                   	retq   

0000000000401dc0 <addval_453>:
  401dc0:	55                   	push   %rbp
  401dc1:	48 89 e5             	mov    %rsp,%rbp
  401dc4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401dc7:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401dca:	2d 77 31 7b 24       	sub    $0x247b3177,%eax
  401dcf:	5d                   	pop    %rbp
  401dd0:	c3                   	retq   

0000000000401dd1 <setval_279>:
  401dd1:	55                   	push   %rbp
  401dd2:	48 89 e5             	mov    %rsp,%rbp
  401dd5:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  401dd9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  401ddd:	c7 00 09 d1 84 db    	movl   $0xdb84d109,(%rax)
  401de3:	5d                   	pop    %rbp
  401de4:	c3                   	retq   

0000000000401de5 <getval_407>:
  401de5:	55                   	push   %rbp
  401de6:	48 89 e5             	mov    %rsp,%rbp
  401de9:	b8 09 d1 20 d2       	mov    $0xd220d109,%eax
  401dee:	5d                   	pop    %rbp
  401def:	c3                   	retq   

0000000000401df0 <end_farm>:
  401df0:	55                   	push   %rbp
  401df1:	48 89 e5             	mov    %rsp,%rbp
  401df4:	b8 01 00 00 00       	mov    $0x1,%eax
  401df9:	5d                   	pop    %rbp
  401dfa:	c3                   	retq   
  401dfb:	90                   	nop

0000000000401dfc <validate>:
  401dfc:	55                   	push   %rbp
  401dfd:	48 89 e5             	mov    %rsp,%rbp
  401e00:	48 83 ec 10          	sub    $0x10,%rsp
  401e04:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401e07:	8b 05 d3 46 20 00    	mov    0x2046d3(%rip),%eax        # 6064e0 <is_checker>
  401e0d:	85 c0                	test   %eax,%eax
  401e0f:	74 7e                	je     401e8f <validate+0x93>
  401e11:	8b 05 d5 46 20 00    	mov    0x2046d5(%rip),%eax        # 6064ec <vlevel>
  401e17:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401e1a:	74 19                	je     401e35 <validate+0x39>
  401e1c:	bf 58 3b 40 00       	mov    $0x403b58,%edi
  401e21:	e8 9a ee ff ff       	callq  400cc0 <puts@plt>
  401e26:	b8 00 00 00 00       	mov    $0x0,%eax
  401e2b:	e8 b7 00 00 00       	callq  401ee7 <check_fail>
  401e30:	e9 b0 00 00 00       	jmpq   401ee5 <validate+0xe9>
  401e35:	8b 05 b5 46 20 00    	mov    0x2046b5(%rip),%eax        # 6064f0 <check_level>
  401e3b:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401e3e:	74 29                	je     401e69 <validate+0x6d>
  401e40:	8b 0d aa 46 20 00    	mov    0x2046aa(%rip),%ecx        # 6064f0 <check_level>
  401e46:	b8 78 3b 40 00       	mov    $0x403b78,%eax
  401e4b:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401e4e:	89 ce                	mov    %ecx,%esi
  401e50:	48 89 c7             	mov    %rax,%rdi
  401e53:	b8 00 00 00 00       	mov    $0x0,%eax
  401e58:	e8 b3 ee ff ff       	callq  400d10 <printf@plt>
  401e5d:	b8 00 00 00 00       	mov    $0x0,%eax
  401e62:	e8 80 00 00 00       	callq  401ee7 <check_fail>
  401e67:	eb 7c                	jmp    401ee5 <validate+0xe9>
  401e69:	0f b6 05 b4 52 20 00 	movzbl 0x2052b4(%rip),%eax        # 607124 <target_prefix>
  401e70:	0f be f0             	movsbl %al,%esi
  401e73:	b8 9c 3b 40 00       	mov    $0x403b9c,%eax
  401e78:	8b 55 fc             	mov    -0x4(%rbp),%edx
  401e7b:	b9 20 65 60 00       	mov    $0x606520,%ecx
  401e80:	48 89 c7             	mov    %rax,%rdi
  401e83:	b8 00 00 00 00       	mov    $0x0,%eax
  401e88:	e8 83 ee ff ff       	callq  400d10 <printf@plt>
  401e8d:	eb 56                	jmp    401ee5 <validate+0xe9>
  401e8f:	8b 05 57 46 20 00    	mov    0x204657(%rip),%eax        # 6064ec <vlevel>
  401e95:	3b 45 fc             	cmp    -0x4(%rbp),%eax
  401e98:	74 1b                	je     401eb5 <validate+0xb9>
  401e9a:	bf 58 3b 40 00       	mov    $0x403b58,%edi
  401e9f:	e8 1c ee ff ff       	callq  400cc0 <puts@plt>
  401ea4:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401ea7:	89 c6                	mov    %eax,%esi
  401ea9:	bf 00 00 00 00       	mov    $0x0,%edi
  401eae:	e8 c0 01 00 00       	callq  402073 <notify_server>
  401eb3:	eb 30                	jmp    401ee5 <validate+0xe9>
  401eb5:	0f b6 05 68 52 20 00 	movzbl 0x205268(%rip),%eax        # 607124 <target_prefix>
  401ebc:	0f be d0             	movsbl %al,%edx
  401ebf:	b8 b8 3b 40 00       	mov    $0x403bb8,%eax
  401ec4:	8b 4d fc             	mov    -0x4(%rbp),%ecx
  401ec7:	89 ce                	mov    %ecx,%esi
  401ec9:	48 89 c7             	mov    %rax,%rdi
  401ecc:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed1:	e8 3a ee ff ff       	callq  400d10 <printf@plt>
  401ed6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401ed9:	89 c6                	mov    %eax,%esi
  401edb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee0:	e8 8e 01 00 00       	callq  402073 <notify_server>
  401ee5:	c9                   	leaveq 
  401ee6:	c3                   	retq   

0000000000401ee7 <check_fail>:
  401ee7:	55                   	push   %rbp
  401ee8:	48 89 e5             	mov    %rsp,%rbp
  401eeb:	8b 15 ff 45 20 00    	mov    0x2045ff(%rip),%edx        # 6064f0 <check_level>
  401ef1:	0f b6 05 2c 52 20 00 	movzbl 0x20522c(%rip),%eax        # 607124 <target_prefix>
  401ef8:	0f be f0             	movsbl %al,%esi
  401efb:	b8 ea 3b 40 00       	mov    $0x403bea,%eax
  401f00:	b9 20 65 60 00       	mov    $0x606520,%ecx
  401f05:	48 89 c7             	mov    %rax,%rdi
  401f08:	b8 00 00 00 00       	mov    $0x0,%eax
  401f0d:	e8 fe ed ff ff       	callq  400d10 <printf@plt>
  401f12:	bf 01 00 00 00       	mov    $0x1,%edi
  401f17:	e8 54 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f1c <fail>:
  401f1c:	55                   	push   %rbp
  401f1d:	48 89 e5             	mov    %rsp,%rbp
  401f20:	48 83 ec 10          	sub    $0x10,%rsp
  401f24:	89 7d fc             	mov    %edi,-0x4(%rbp)
  401f27:	8b 05 b3 45 20 00    	mov    0x2045b3(%rip),%eax        # 6064e0 <is_checker>
  401f2d:	85 c0                	test   %eax,%eax
  401f2f:	74 0c                	je     401f3d <fail+0x21>
  401f31:	b8 00 00 00 00       	mov    $0x0,%eax
  401f36:	e8 ac ff ff ff       	callq  401ee7 <check_fail>
  401f3b:	eb 0f                	jmp    401f4c <fail+0x30>
  401f3d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  401f40:	89 c6                	mov    %eax,%esi
  401f42:	bf 00 00 00 00       	mov    $0x0,%edi
  401f47:	e8 27 01 00 00       	callq  402073 <notify_server>
  401f4c:	c9                   	leaveq 
  401f4d:	c3                   	retq   

0000000000401f4e <save_char>:
  401f4e:	55                   	push   %rbp
  401f4f:	48 89 e5             	mov    %rsp,%rbp
  401f52:	89 f8                	mov    %edi,%eax
  401f54:	88 45 fc             	mov    %al,-0x4(%rbp)
  401f57:	8b 05 b3 45 20 00    	mov    0x2045b3(%rip),%eax        # 606510 <gets_cnt>
  401f5d:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401f62:	7f 7b                	jg     401fdf <save_char+0x91>
  401f64:	8b 15 a6 45 20 00    	mov    0x2045a6(%rip),%edx        # 606510 <gets_cnt>
  401f6a:	89 d0                	mov    %edx,%eax
  401f6c:	01 c0                	add    %eax,%eax
  401f6e:	8d 0c 10             	lea    (%rax,%rdx,1),%ecx
  401f71:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  401f75:	c0 e8 04             	shr    $0x4,%al
  401f78:	0f b6 c0             	movzbl %al,%eax
  401f7b:	83 e0 0f             	and    $0xf,%eax
  401f7e:	48 98                	cltq   
  401f80:	0f b6 90 90 64 60 00 	movzbl 0x606490(%rax),%edx
  401f87:	48 63 c1             	movslq %ecx,%rax
  401f8a:	88 90 20 65 60 00    	mov    %dl,0x606520(%rax)
  401f90:	8b 15 7a 45 20 00    	mov    0x20457a(%rip),%edx        # 606510 <gets_cnt>
  401f96:	89 d0                	mov    %edx,%eax
  401f98:	01 c0                	add    %eax,%eax
  401f9a:	01 d0                	add    %edx,%eax
  401f9c:	8d 48 01             	lea    0x1(%rax),%ecx
  401f9f:	0f b6 45 fc          	movzbl -0x4(%rbp),%eax
  401fa3:	83 e0 0f             	and    $0xf,%eax
  401fa6:	48 98                	cltq   
  401fa8:	0f b6 90 90 64 60 00 	movzbl 0x606490(%rax),%edx
  401faf:	48 63 c1             	movslq %ecx,%rax
  401fb2:	88 90 20 65 60 00    	mov    %dl,0x606520(%rax)
  401fb8:	8b 15 52 45 20 00    	mov    0x204552(%rip),%edx        # 606510 <gets_cnt>
  401fbe:	89 d0                	mov    %edx,%eax
  401fc0:	01 c0                	add    %eax,%eax
  401fc2:	01 d0                	add    %edx,%eax
  401fc4:	83 c0 02             	add    $0x2,%eax
  401fc7:	48 98                	cltq   
  401fc9:	c6 80 20 65 60 00 20 	movb   $0x20,0x606520(%rax)
  401fd0:	8b 05 3a 45 20 00    	mov    0x20453a(%rip),%eax        # 606510 <gets_cnt>
  401fd6:	83 c0 01             	add    $0x1,%eax
  401fd9:	89 05 31 45 20 00    	mov    %eax,0x204531(%rip)        # 606510 <gets_cnt>
  401fdf:	5d                   	pop    %rbp
  401fe0:	c3                   	retq   

0000000000401fe1 <save_term>:
  401fe1:	55                   	push   %rbp
  401fe2:	48 89 e5             	mov    %rsp,%rbp
  401fe5:	8b 15 25 45 20 00    	mov    0x204525(%rip),%edx        # 606510 <gets_cnt>
  401feb:	89 d0                	mov    %edx,%eax
  401fed:	01 c0                	add    %eax,%eax
  401fef:	01 d0                	add    %edx,%eax
  401ff1:	48 98                	cltq   
  401ff3:	c6 80 20 65 60 00 00 	movb   $0x0,0x606520(%rax)
  401ffa:	5d                   	pop    %rbp
  401ffb:	c3                   	retq   

0000000000401ffc <Gets>:
  401ffc:	55                   	push   %rbp
  401ffd:	48 89 e5             	mov    %rsp,%rbp
  402000:	48 83 ec 20          	sub    $0x20,%rsp
  402004:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402008:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40200c:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  402010:	c7 05 f6 44 20 00 00 	movl   $0x0,0x2044f6(%rip)        # 606510 <gets_cnt>
  402017:	00 00 00 
  40201a:	eb 1d                	jmp    402039 <Gets+0x3d>
  40201c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40201f:	89 c2                	mov    %eax,%edx
  402021:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402025:	88 10                	mov    %dl,(%rax)
  402027:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  40202c:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40202f:	0f b6 c0             	movzbl %al,%eax
  402032:	89 c7                	mov    %eax,%edi
  402034:	e8 15 ff ff ff       	callq  401f4e <save_char>
  402039:	48 8b 05 b8 44 20 00 	mov    0x2044b8(%rip),%rax        # 6064f8 <infile>
  402040:	48 89 c7             	mov    %rax,%rdi
  402043:	e8 88 ed ff ff       	callq  400dd0 <_IO_getc@plt>
  402048:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40204b:	83 7d fc ff          	cmpl   $0xffffffff,-0x4(%rbp)
  40204f:	74 06                	je     402057 <Gets+0x5b>
  402051:	83 7d fc 0a          	cmpl   $0xa,-0x4(%rbp)
  402055:	75 c5                	jne    40201c <Gets+0x20>
  402057:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40205b:	c6 00 00             	movb   $0x0,(%rax)
  40205e:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  402063:	b8 00 00 00 00       	mov    $0x0,%eax
  402068:	e8 74 ff ff ff       	callq  401fe1 <save_term>
  40206d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402071:	c9                   	leaveq 
  402072:	c3                   	retq   

0000000000402073 <notify_server>:
  402073:	55                   	push   %rbp
  402074:	48 89 e5             	mov    %rsp,%rbp
  402077:	48 81 ec 40 40 00 00 	sub    $0x4040,%rsp
  40207e:	89 bd dc bf ff ff    	mov    %edi,-0x4024(%rbp)
  402084:	89 b5 d8 bf ff ff    	mov    %esi,-0x4028(%rbp)
  40208a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402091:	00 00 
  402093:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402097:	31 c0                	xor    %eax,%eax
  402099:	8b 05 41 44 20 00    	mov    0x204441(%rip),%eax        # 6064e0 <is_checker>
  40209f:	85 c0                	test   %eax,%eax
  4020a1:	0f 85 e6 01 00 00    	jne    40228d <notify_server+0x21a>
  4020a7:	8b 05 63 44 20 00    	mov    0x204463(%rip),%eax        # 606510 <gets_cnt>
  4020ad:	83 c0 64             	add    $0x64,%eax
  4020b0:	3d 00 20 00 00       	cmp    $0x2000,%eax
  4020b5:	7e 1c                	jle    4020d3 <notify_server+0x60>
  4020b7:	b8 00 3c 40 00       	mov    $0x403c00,%eax
  4020bc:	48 89 c7             	mov    %rax,%rdi
  4020bf:	b8 00 00 00 00       	mov    $0x0,%eax
  4020c4:	e8 47 ec ff ff       	callq  400d10 <printf@plt>
  4020c9:	bf 01 00 00 00       	mov    $0x1,%edi
  4020ce:	e8 9d ed ff ff       	callq  400e70 <exit@plt>
  4020d3:	0f b6 05 4a 50 20 00 	movzbl 0x20504a(%rip),%eax        # 607124 <target_prefix>
  4020da:	44 0f be c0          	movsbl %al,%r8d
  4020de:	8b 05 9c 43 20 00    	mov    0x20439c(%rip),%eax        # 606480 <notify>
  4020e4:	85 c0                	test   %eax,%eax
  4020e6:	74 08                	je     4020f0 <notify_server+0x7d>
  4020e8:	8b 15 fa 43 20 00    	mov    0x2043fa(%rip),%edx        # 6064e8 <authkey>
  4020ee:	eb 05                	jmp    4020f5 <notify_server+0x82>
  4020f0:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  4020f5:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  4020fc:	74 07                	je     402105 <notify_server+0x92>
  4020fe:	b8 2b 3c 40 00       	mov    $0x403c2b,%eax
  402103:	eb 05                	jmp    40210a <notify_server+0x97>
  402105:	b8 30 3c 40 00       	mov    $0x403c30,%eax
  40210a:	44 8b 15 5f 43 20 00 	mov    0x20435f(%rip),%r10d        # 606470 <target_id>
  402111:	be 35 3c 40 00       	mov    $0x403c35,%esi
  402116:	48 8d bd f0 bf ff ff 	lea    -0x4010(%rbp),%rdi
  40211d:	48 c7 44 24 08 20 65 	movq   $0x606520,0x8(%rsp)
  402124:	60 00 
  402126:	8b 8d d8 bf ff ff    	mov    -0x4028(%rbp),%ecx
  40212c:	89 0c 24             	mov    %ecx,(%rsp)
  40212f:	45 89 c1             	mov    %r8d,%r9d
  402132:	41 89 d0             	mov    %edx,%r8d
  402135:	48 89 c1             	mov    %rax,%rcx
  402138:	44 89 d2             	mov    %r10d,%edx
  40213b:	b8 00 00 00 00       	mov    $0x0,%eax
  402140:	e8 1b ed ff ff       	callq  400e60 <sprintf@plt>
  402145:	8b 05 35 43 20 00    	mov    0x204335(%rip),%eax        # 606480 <notify>
  40214b:	85 c0                	test   %eax,%eax
  40214d:	0f 84 9e 00 00 00    	je     4021f1 <notify_server+0x17e>
  402153:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  40215a:	0f 84 82 00 00 00    	je     4021e2 <notify_server+0x16f>
  402160:	48 8b 15 01 43 20 00 	mov    0x204301(%rip),%rdx        # 606468 <lab>
  402167:	48 8b 35 f2 42 20 00 	mov    0x2042f2(%rip),%rsi        # 606460 <course>
  40216e:	48 8b 05 03 43 20 00 	mov    0x204303(%rip),%rax        # 606478 <user_id>
  402175:	48 8d bd f0 df ff ff 	lea    -0x2010(%rbp),%rdi
  40217c:	48 8d 8d f0 bf ff ff 	lea    -0x4010(%rbp),%rcx
  402183:	49 89 f9             	mov    %rdi,%r9
  402186:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40218c:	48 89 c7             	mov    %rax,%rdi
  40218f:	e8 c1 12 00 00       	callq  403455 <driver_post>
  402194:	89 85 ec bf ff ff    	mov    %eax,-0x4014(%rbp)
  40219a:	83 bd ec bf ff ff 00 	cmpl   $0x0,-0x4014(%rbp)
  4021a1:	79 26                	jns    4021c9 <notify_server+0x156>
  4021a3:	b8 51 3c 40 00       	mov    $0x403c51,%eax
  4021a8:	48 8d 95 f0 df ff ff 	lea    -0x2010(%rbp),%rdx
  4021af:	48 89 d6             	mov    %rdx,%rsi
  4021b2:	48 89 c7             	mov    %rax,%rdi
  4021b5:	b8 00 00 00 00       	mov    $0x0,%eax
  4021ba:	e8 51 eb ff ff       	callq  400d10 <printf@plt>
  4021bf:	bf 01 00 00 00       	mov    $0x1,%edi
  4021c4:	e8 a7 ec ff ff       	callq  400e70 <exit@plt>
  4021c9:	bf 60 3c 40 00       	mov    $0x403c60,%edi
  4021ce:	e8 ed ea ff ff       	callq  400cc0 <puts@plt>
  4021d3:	bf 95 3c 40 00       	mov    $0x403c95,%edi
  4021d8:	e8 e3 ea ff ff       	callq  400cc0 <puts@plt>
  4021dd:	e9 ac 00 00 00       	jmpq   40228e <notify_server+0x21b>
  4021e2:	bf 9f 3c 40 00       	mov    $0x403c9f,%edi
  4021e7:	e8 d4 ea ff ff       	callq  400cc0 <puts@plt>
  4021ec:	e9 9d 00 00 00       	jmpq   40228e <notify_server+0x21b>
  4021f1:	83 bd dc bf ff ff 00 	cmpl   $0x0,-0x4024(%rbp)
  4021f8:	74 07                	je     402201 <notify_server+0x18e>
  4021fa:	b8 2b 3c 40 00       	mov    $0x403c2b,%eax
  4021ff:	eb 05                	jmp    402206 <notify_server+0x193>
  402201:	b8 30 3c 40 00       	mov    $0x403c30,%eax
  402206:	ba a8 3c 40 00       	mov    $0x403ca8,%edx
  40220b:	48 89 c6             	mov    %rax,%rsi
  40220e:	48 89 d7             	mov    %rdx,%rdi
  402211:	b8 00 00 00 00       	mov    $0x0,%eax
  402216:	e8 f5 ea ff ff       	callq  400d10 <printf@plt>
  40221b:	48 8b 15 56 42 20 00 	mov    0x204256(%rip),%rdx        # 606478 <user_id>
  402222:	b8 ce 3c 40 00       	mov    $0x403cce,%eax
  402227:	48 89 d6             	mov    %rdx,%rsi
  40222a:	48 89 c7             	mov    %rax,%rdi
  40222d:	b8 00 00 00 00       	mov    $0x0,%eax
  402232:	e8 d9 ea ff ff       	callq  400d10 <printf@plt>
  402237:	48 8b 15 22 42 20 00 	mov    0x204222(%rip),%rdx        # 606460 <course>
  40223e:	b8 db 3c 40 00       	mov    $0x403cdb,%eax
  402243:	48 89 d6             	mov    %rdx,%rsi
  402246:	48 89 c7             	mov    %rax,%rdi
  402249:	b8 00 00 00 00       	mov    $0x0,%eax
  40224e:	e8 bd ea ff ff       	callq  400d10 <printf@plt>
  402253:	48 8b 15 0e 42 20 00 	mov    0x20420e(%rip),%rdx        # 606468 <lab>
  40225a:	b8 e7 3c 40 00       	mov    $0x403ce7,%eax
  40225f:	48 89 d6             	mov    %rdx,%rsi
  402262:	48 89 c7             	mov    %rax,%rdi
  402265:	b8 00 00 00 00       	mov    $0x0,%eax
  40226a:	e8 a1 ea ff ff       	callq  400d10 <printf@plt>
  40226f:	b8 f0 3c 40 00       	mov    $0x403cf0,%eax
  402274:	48 8d 95 f0 bf ff ff 	lea    -0x4010(%rbp),%rdx
  40227b:	48 89 d6             	mov    %rdx,%rsi
  40227e:	48 89 c7             	mov    %rax,%rdi
  402281:	b8 00 00 00 00       	mov    $0x0,%eax
  402286:	e8 85 ea ff ff       	callq  400d10 <printf@plt>
  40228b:	eb 01                	jmp    40228e <notify_server+0x21b>
  40228d:	90                   	nop
  40228e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402292:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  402299:	00 00 
  40229b:	74 05                	je     4022a2 <notify_server+0x22f>
  40229d:	e8 3e ea ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  4022a2:	c9                   	leaveq 
  4022a3:	c3                   	retq   

00000000004022a4 <bushandler>:
  4022a4:	55                   	push   %rbp
  4022a5:	48 89 e5             	mov    %rsp,%rbp
  4022a8:	48 83 ec 10          	sub    $0x10,%rsp
  4022ac:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4022af:	8b 05 2b 42 20 00    	mov    0x20422b(%rip),%eax        # 6064e0 <is_checker>
  4022b5:	85 c0                	test   %eax,%eax
  4022b7:	74 16                	je     4022cf <bushandler+0x2b>
  4022b9:	bf fc 3c 40 00       	mov    $0x403cfc,%edi
  4022be:	e8 fd e9 ff ff       	callq  400cc0 <puts@plt>
  4022c3:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c8:	e8 1a fc ff ff       	callq  401ee7 <check_fail>
  4022cd:	eb 23                	jmp    4022f2 <bushandler+0x4e>
  4022cf:	bf 08 3d 40 00       	mov    $0x403d08,%edi
  4022d4:	e8 e7 e9 ff ff       	callq  400cc0 <puts@plt>
  4022d9:	bf 28 3d 40 00       	mov    $0x403d28,%edi
  4022de:	e8 dd e9 ff ff       	callq  400cc0 <puts@plt>
  4022e3:	be 00 00 00 00       	mov    $0x0,%esi
  4022e8:	bf 00 00 00 00       	mov    $0x0,%edi
  4022ed:	e8 81 fd ff ff       	callq  402073 <notify_server>
  4022f2:	bf 01 00 00 00       	mov    $0x1,%edi
  4022f7:	e8 74 eb ff ff       	callq  400e70 <exit@plt>

00000000004022fc <seghandler>:
  4022fc:	55                   	push   %rbp
  4022fd:	48 89 e5             	mov    %rsp,%rbp
  402300:	48 83 ec 10          	sub    $0x10,%rsp
  402304:	89 7d fc             	mov    %edi,-0x4(%rbp)
  402307:	8b 05 d3 41 20 00    	mov    0x2041d3(%rip),%eax        # 6064e0 <is_checker>
  40230d:	85 c0                	test   %eax,%eax
  40230f:	74 16                	je     402327 <seghandler+0x2b>
  402311:	bf 3e 3d 40 00       	mov    $0x403d3e,%edi
  402316:	e8 a5 e9 ff ff       	callq  400cc0 <puts@plt>
  40231b:	b8 00 00 00 00       	mov    $0x0,%eax
  402320:	e8 c2 fb ff ff       	callq  401ee7 <check_fail>
  402325:	eb 23                	jmp    40234a <seghandler+0x4e>
  402327:	bf 58 3d 40 00       	mov    $0x403d58,%edi
  40232c:	e8 8f e9 ff ff       	callq  400cc0 <puts@plt>
  402331:	bf 28 3d 40 00       	mov    $0x403d28,%edi
  402336:	e8 85 e9 ff ff       	callq  400cc0 <puts@plt>
  40233b:	be 00 00 00 00       	mov    $0x0,%esi
  402340:	bf 00 00 00 00       	mov    $0x0,%edi
  402345:	e8 29 fd ff ff       	callq  402073 <notify_server>
  40234a:	bf 01 00 00 00       	mov    $0x1,%edi
  40234f:	e8 1c eb ff ff       	callq  400e70 <exit@plt>

0000000000402354 <illegalhandler>:
  402354:	55                   	push   %rbp
  402355:	48 89 e5             	mov    %rsp,%rbp
  402358:	48 83 ec 10          	sub    $0x10,%rsp
  40235c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  40235f:	8b 05 7b 41 20 00    	mov    0x20417b(%rip),%eax        # 6064e0 <is_checker>
  402365:	85 c0                	test   %eax,%eax
  402367:	74 16                	je     40237f <illegalhandler+0x2b>
  402369:	bf 80 3d 40 00       	mov    $0x403d80,%edi
  40236e:	e8 4d e9 ff ff       	callq  400cc0 <puts@plt>
  402373:	b8 00 00 00 00       	mov    $0x0,%eax
  402378:	e8 6a fb ff ff       	callq  401ee7 <check_fail>
  40237d:	eb 23                	jmp    4023a2 <illegalhandler+0x4e>
  40237f:	bf 98 3d 40 00       	mov    $0x403d98,%edi
  402384:	e8 37 e9 ff ff       	callq  400cc0 <puts@plt>
  402389:	bf 28 3d 40 00       	mov    $0x403d28,%edi
  40238e:	e8 2d e9 ff ff       	callq  400cc0 <puts@plt>
  402393:	be 00 00 00 00       	mov    $0x0,%esi
  402398:	bf 00 00 00 00       	mov    $0x0,%edi
  40239d:	e8 d1 fc ff ff       	callq  402073 <notify_server>
  4023a2:	bf 01 00 00 00       	mov    $0x1,%edi
  4023a7:	e8 c4 ea ff ff       	callq  400e70 <exit@plt>

00000000004023ac <sigalrmhandler>:
  4023ac:	55                   	push   %rbp
  4023ad:	48 89 e5             	mov    %rsp,%rbp
  4023b0:	48 83 ec 10          	sub    $0x10,%rsp
  4023b4:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4023b7:	8b 05 23 41 20 00    	mov    0x204123(%rip),%eax        # 6064e0 <is_checker>
  4023bd:	85 c0                	test   %eax,%eax
  4023bf:	74 16                	je     4023d7 <sigalrmhandler+0x2b>
  4023c1:	bf c3 3d 40 00       	mov    $0x403dc3,%edi
  4023c6:	e8 f5 e8 ff ff       	callq  400cc0 <puts@plt>
  4023cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4023d0:	e8 12 fb ff ff       	callq  401ee7 <check_fail>
  4023d5:	eb 26                	jmp    4023fd <sigalrmhandler+0x51>
  4023d7:	b8 d0 3d 40 00       	mov    $0x403dd0,%eax
  4023dc:	be 05 00 00 00       	mov    $0x5,%esi
  4023e1:	48 89 c7             	mov    %rax,%rdi
  4023e4:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e9:	e8 22 e9 ff ff       	callq  400d10 <printf@plt>
  4023ee:	be 00 00 00 00       	mov    $0x0,%esi
  4023f3:	bf 00 00 00 00       	mov    $0x0,%edi
  4023f8:	e8 76 fc ff ff       	callq  402073 <notify_server>
  4023fd:	bf 01 00 00 00       	mov    $0x1,%edi
  402402:	e8 69 ea ff ff       	callq  400e70 <exit@plt>

0000000000402407 <launch>:
  402407:	55                   	push   %rbp
  402408:	48 89 e5             	mov    %rsp,%rbp
  40240b:	48 83 ec 20          	sub    $0x20,%rsp
  40240f:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  402413:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402417:	48 8d 50 0f          	lea    0xf(%rax),%rdx
  40241b:	b8 10 00 00 00       	mov    $0x10,%eax
  402420:	48 83 e8 01          	sub    $0x1,%rax
  402424:	48 01 d0             	add    %rdx,%rax
  402427:	48 c7 45 e0 10 00 00 	movq   $0x10,-0x20(%rbp)
  40242e:	00 
  40242f:	ba 00 00 00 00       	mov    $0x0,%edx
  402434:	48 f7 75 e0          	divq   -0x20(%rbp)
  402438:	48 6b c0 10          	imul   $0x10,%rax,%rax
  40243c:	48 29 c4             	sub    %rax,%rsp
  40243f:	48 89 e0             	mov    %rsp,%rax
  402442:	48 83 c0 0f          	add    $0xf,%rax
  402446:	48 c1 e8 04          	shr    $0x4,%rax
  40244a:	48 c1 e0 04          	shl    $0x4,%rax
  40244e:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402452:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  402456:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40245a:	be f4 00 00 00       	mov    $0xf4,%esi
  40245f:	48 89 c7             	mov    %rax,%rdi
  402462:	e8 b9 e8 ff ff       	callq  400d20 <memset@plt>
  402467:	48 8b 15 8a 40 20 00 	mov    0x20408a(%rip),%rdx        # 6064f8 <infile>
  40246e:	48 8b 05 2b 40 20 00 	mov    0x20402b(%rip),%rax        # 6064a0 <__bss_start>
  402475:	48 39 c2             	cmp    %rax,%rdx
  402478:	75 12                	jne    40248c <launch+0x85>
  40247a:	b8 03 3e 40 00       	mov    $0x403e03,%eax
  40247f:	48 89 c7             	mov    %rax,%rdi
  402482:	b8 00 00 00 00       	mov    $0x0,%eax
  402487:	e8 84 e8 ff ff       	callq  400d10 <printf@plt>
  40248c:	c7 05 56 40 20 00 00 	movl   $0x0,0x204056(%rip)        # 6064ec <vlevel>
  402493:	00 00 00 
  402496:	b8 00 00 00 00       	mov    $0x0,%eax
  40249b:	e8 7c f6 ff ff       	callq  401b1c <test>
  4024a0:	8b 05 3a 40 20 00    	mov    0x20403a(%rip),%eax        # 6064e0 <is_checker>
  4024a6:	85 c0                	test   %eax,%eax
  4024a8:	74 16                	je     4024c0 <launch+0xb9>
  4024aa:	bf 10 3e 40 00       	mov    $0x403e10,%edi
  4024af:	e8 0c e8 ff ff       	callq  400cc0 <puts@plt>
  4024b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4024b9:	e8 29 fa ff ff       	callq  401ee7 <check_fail>
  4024be:	eb 0a                	jmp    4024ca <launch+0xc3>
  4024c0:	bf 1b 3e 40 00       	mov    $0x403e1b,%edi
  4024c5:	e8 f6 e7 ff ff       	callq  400cc0 <puts@plt>
  4024ca:	c9                   	leaveq 
  4024cb:	c3                   	retq   

00000000004024cc <stable_launch>:
  4024cc:	55                   	push   %rbp
  4024cd:	48 89 e5             	mov    %rsp,%rbp
  4024d0:	48 83 ec 20          	sub    $0x20,%rsp
  4024d4:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  4024d8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4024dc:	48 89 05 1d 40 20 00 	mov    %rax,0x20401d(%rip)        # 606500 <global_offset>
  4024e3:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  4024e9:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4024ef:	b9 32 01 00 00       	mov    $0x132,%ecx
  4024f4:	ba 07 00 00 00       	mov    $0x7,%edx
  4024f9:	be 00 00 10 00       	mov    $0x100000,%esi
  4024fe:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402503:	e8 e8 e7 ff ff       	callq  400cf0 <mmap@plt>
  402508:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40250c:	48 81 7d f8 00 60 58 	cmpq   $0x55586000,-0x8(%rbp)
  402513:	55 
  402514:	74 3c                	je     402552 <stable_launch+0x86>
  402516:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  40251a:	be 00 00 10 00       	mov    $0x100000,%esi
  40251f:	48 89 c7             	mov    %rax,%rdi
  402522:	e8 c9 e8 ff ff       	callq  400df0 <munmap@plt>
  402527:	b9 30 3e 40 00       	mov    $0x403e30,%ecx
  40252c:	48 8b 05 7d 3f 20 00 	mov    0x203f7d(%rip),%rax        # 6064b0 <stderr@@GLIBC_2.2.5>
  402533:	ba 00 60 58 55       	mov    $0x55586000,%edx
  402538:	48 89 ce             	mov    %rcx,%rsi
  40253b:	48 89 c7             	mov    %rax,%rdi
  40253e:	b8 00 00 00 00       	mov    $0x0,%eax
  402543:	e8 48 e8 ff ff       	callq  400d90 <fprintf@plt>
  402548:	bf 01 00 00 00       	mov    $0x1,%edi
  40254d:	e8 1e e9 ff ff       	callq  400e70 <exit@plt>
  402552:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402556:	48 05 f8 ff 0f 00    	add    $0xffff8,%rax
  40255c:	48 89 05 c5 4b 20 00 	mov    %rax,0x204bc5(%rip)        # 607128 <stack_top>
  402563:	48 8b 15 be 4b 20 00 	mov    0x204bbe(%rip),%rdx        # 607128 <stack_top>
  40256a:	48 89 e0             	mov    %rsp,%rax
  40256d:	48 89 d4             	mov    %rdx,%rsp
  402570:	48 89 c2             	mov    %rax,%rdx
  402573:	48 89 15 8e 3f 20 00 	mov    %rdx,0x203f8e(%rip)        # 606508 <global_save_stack>
  40257a:	48 8b 05 7f 3f 20 00 	mov    0x203f7f(%rip),%rax        # 606500 <global_offset>
  402581:	48 89 c7             	mov    %rax,%rdi
  402584:	e8 7e fe ff ff       	callq  402407 <launch>
  402589:	48 8b 05 78 3f 20 00 	mov    0x203f78(%rip),%rax        # 606508 <global_save_stack>
  402590:	48 89 c4             	mov    %rax,%rsp
  402593:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402597:	be 00 00 10 00       	mov    $0x100000,%esi
  40259c:	48 89 c7             	mov    %rax,%rdi
  40259f:	e8 4c e8 ff ff       	callq  400df0 <munmap@plt>
  4025a4:	c9                   	leaveq 
  4025a5:	c3                   	retq   
  4025a6:	90                   	nop
  4025a7:	90                   	nop

00000000004025a8 <sigalrm_handler>:
  4025a8:	55                   	push   %rbp
  4025a9:	48 89 e5             	mov    %rsp,%rbp
  4025ac:	48 83 ec 10          	sub    $0x10,%rsp
  4025b0:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4025b3:	b9 58 3e 40 00       	mov    $0x403e58,%ecx
  4025b8:	48 8b 05 f1 3e 20 00 	mov    0x203ef1(%rip),%rax        # 6064b0 <stderr@@GLIBC_2.2.5>
  4025bf:	ba 00 00 00 00       	mov    $0x0,%edx
  4025c4:	48 89 ce             	mov    %rcx,%rsi
  4025c7:	48 89 c7             	mov    %rax,%rdi
  4025ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4025cf:	e8 bc e7 ff ff       	callq  400d90 <fprintf@plt>
  4025d4:	bf 01 00 00 00       	mov    $0x1,%edi
  4025d9:	e8 92 e8 ff ff       	callq  400e70 <exit@plt>

00000000004025de <rio_readinitb>:
  4025de:	55                   	push   %rbp
  4025df:	48 89 e5             	mov    %rsp,%rbp
  4025e2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  4025e6:	89 75 f4             	mov    %esi,-0xc(%rbp)
  4025e9:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025ed:	8b 55 f4             	mov    -0xc(%rbp),%edx
  4025f0:	89 10                	mov    %edx,(%rax)
  4025f2:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4025f6:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%rax)
  4025fd:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402601:	48 8d 50 10          	lea    0x10(%rax),%rdx
  402605:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402609:	48 89 50 08          	mov    %rdx,0x8(%rax)
  40260d:	5d                   	pop    %rbp
  40260e:	c3                   	retq   

000000000040260f <rio_read>:
  40260f:	55                   	push   %rbp
  402610:	48 89 e5             	mov    %rsp,%rbp
  402613:	48 83 ec 30          	sub    $0x30,%rsp
  402617:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  40261b:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  40261f:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  402623:	eb 6e                	jmp    402693 <rio_read+0x84>
  402625:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402629:	48 8d 48 10          	lea    0x10(%rax),%rcx
  40262d:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402631:	8b 00                	mov    (%rax),%eax
  402633:	ba 00 20 00 00       	mov    $0x2000,%edx
  402638:	48 89 ce             	mov    %rcx,%rsi
  40263b:	89 c7                	mov    %eax,%edi
  40263d:	e8 0e e7 ff ff       	callq  400d50 <read@plt>
  402642:	89 c2                	mov    %eax,%edx
  402644:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402648:	89 50 04             	mov    %edx,0x4(%rax)
  40264b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40264f:	8b 40 04             	mov    0x4(%rax),%eax
  402652:	85 c0                	test   %eax,%eax
  402654:	79 18                	jns    40266e <rio_read+0x5f>
  402656:	e8 25 e6 ff ff       	callq  400c80 <__errno_location@plt>
  40265b:	8b 00                	mov    (%rax),%eax
  40265d:	83 f8 04             	cmp    $0x4,%eax
  402660:	74 31                	je     402693 <rio_read+0x84>
  402662:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402669:	e9 a0 00 00 00       	jmpq   40270e <rio_read+0xff>
  40266e:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402672:	8b 40 04             	mov    0x4(%rax),%eax
  402675:	85 c0                	test   %eax,%eax
  402677:	75 0a                	jne    402683 <rio_read+0x74>
  402679:	b8 00 00 00 00       	mov    $0x0,%eax
  40267e:	e9 8b 00 00 00       	jmpq   40270e <rio_read+0xff>
  402683:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402687:	48 8d 50 10          	lea    0x10(%rax),%rdx
  40268b:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40268f:	48 89 50 08          	mov    %rdx,0x8(%rax)
  402693:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402697:	8b 40 04             	mov    0x4(%rax),%eax
  40269a:	85 c0                	test   %eax,%eax
  40269c:	7e 87                	jle    402625 <rio_read+0x16>
  40269e:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4026a2:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4026a5:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026a9:	8b 40 04             	mov    0x4(%rax),%eax
  4026ac:	89 c0                	mov    %eax,%eax
  4026ae:	48 3b 45 d8          	cmp    -0x28(%rbp),%rax
  4026b2:	73 0a                	jae    4026be <rio_read+0xaf>
  4026b4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026b8:	8b 40 04             	mov    0x4(%rax),%eax
  4026bb:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4026be:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4026c1:	48 63 d0             	movslq %eax,%rdx
  4026c4:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026c8:	48 8b 40 08          	mov    0x8(%rax),%rax
  4026cc:	48 89 c1             	mov    %rax,%rcx
  4026cf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4026d3:	48 89 ce             	mov    %rcx,%rsi
  4026d6:	48 89 c7             	mov    %rax,%rdi
  4026d9:	e8 c2 e6 ff ff       	callq  400da0 <memcpy@plt>
  4026de:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026e2:	48 8b 50 08          	mov    0x8(%rax),%rdx
  4026e6:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4026e9:	48 98                	cltq   
  4026eb:	48 01 c2             	add    %rax,%rdx
  4026ee:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026f2:	48 89 50 08          	mov    %rdx,0x8(%rax)
  4026f6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4026fa:	8b 40 04             	mov    0x4(%rax),%eax
  4026fd:	89 c2                	mov    %eax,%edx
  4026ff:	2b 55 fc             	sub    -0x4(%rbp),%edx
  402702:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402706:	89 50 04             	mov    %edx,0x4(%rax)
  402709:	8b 45 fc             	mov    -0x4(%rbp),%eax
  40270c:	48 98                	cltq   
  40270e:	c9                   	leaveq 
  40270f:	c3                   	retq   

0000000000402710 <rio_readlineb>:
  402710:	55                   	push   %rbp
  402711:	48 89 e5             	mov    %rsp,%rbp
  402714:	48 83 ec 40          	sub    $0x40,%rsp
  402718:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  40271c:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  402720:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  402724:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  402728:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  40272c:	48 c7 45 e8 01 00 00 	movq   $0x1,-0x18(%rbp)
  402733:	00 
  402734:	eb 5c                	jmp    402792 <rio_readlineb+0x82>
  402736:	48 8d 4d ff          	lea    -0x1(%rbp),%rcx
  40273a:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40273e:	ba 01 00 00 00       	mov    $0x1,%edx
  402743:	48 89 ce             	mov    %rcx,%rsi
  402746:	48 89 c7             	mov    %rax,%rdi
  402749:	e8 c1 fe ff ff       	callq  40260f <rio_read>
  40274e:	89 45 f8             	mov    %eax,-0x8(%rbp)
  402751:	83 7d f8 01          	cmpl   $0x1,-0x8(%rbp)
  402755:	75 19                	jne    402770 <rio_readlineb+0x60>
  402757:	0f b6 55 ff          	movzbl -0x1(%rbp),%edx
  40275b:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40275f:	88 10                	mov    %dl,(%rax)
  402761:	48 83 45 f0 01       	addq   $0x1,-0x10(%rbp)
  402766:	0f b6 45 ff          	movzbl -0x1(%rbp),%eax
  40276a:	3c 0a                	cmp    $0xa,%al
  40276c:	75 1f                	jne    40278d <rio_readlineb+0x7d>
  40276e:	eb 2f                	jmp    40279f <rio_readlineb+0x8f>
  402770:	83 7d f8 00          	cmpl   $0x0,-0x8(%rbp)
  402774:	75 0e                	jne    402784 <rio_readlineb+0x74>
  402776:	48 83 7d e8 01       	cmpq   $0x1,-0x18(%rbp)
  40277b:	75 21                	jne    40279e <rio_readlineb+0x8e>
  40277d:	b8 00 00 00 00       	mov    $0x0,%eax
  402782:	eb 26                	jmp    4027aa <rio_readlineb+0x9a>
  402784:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40278b:	eb 1d                	jmp    4027aa <rio_readlineb+0x9a>
  40278d:	48 83 45 e8 01       	addq   $0x1,-0x18(%rbp)
  402792:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  402796:	48 3b 45 c8          	cmp    -0x38(%rbp),%rax
  40279a:	72 9a                	jb     402736 <rio_readlineb+0x26>
  40279c:	eb 01                	jmp    40279f <rio_readlineb+0x8f>
  40279e:	90                   	nop
  40279f:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  4027a3:	c6 00 00             	movb   $0x0,(%rax)
  4027a6:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4027aa:	c9                   	leaveq 
  4027ab:	c3                   	retq   

00000000004027ac <rio_writen>:
  4027ac:	55                   	push   %rbp
  4027ad:	48 89 e5             	mov    %rsp,%rbp
  4027b0:	48 83 ec 40          	sub    $0x40,%rsp
  4027b4:	89 7d dc             	mov    %edi,-0x24(%rbp)
  4027b7:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  4027bb:	48 89 55 c8          	mov    %rdx,-0x38(%rbp)
  4027bf:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4027c3:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4027c7:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4027cb:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  4027cf:	eb 4f                	jmp    402820 <rio_writen+0x74>
  4027d1:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4027d5:	48 8b 4d f8          	mov    -0x8(%rbp),%rcx
  4027d9:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4027dc:	48 89 ce             	mov    %rcx,%rsi
  4027df:	89 c7                	mov    %eax,%edi
  4027e1:	e8 ea e4 ff ff       	callq  400cd0 <write@plt>
  4027e6:	48 89 45 f0          	mov    %rax,-0x10(%rbp)
  4027ea:	48 83 7d f0 00       	cmpq   $0x0,-0x10(%rbp)
  4027ef:	7f 1f                	jg     402810 <rio_writen+0x64>
  4027f1:	e8 8a e4 ff ff       	callq  400c80 <__errno_location@plt>
  4027f6:	8b 00                	mov    (%rax),%eax
  4027f8:	83 f8 04             	cmp    $0x4,%eax
  4027fb:	75 0a                	jne    402807 <rio_writen+0x5b>
  4027fd:	48 c7 45 f0 00 00 00 	movq   $0x0,-0x10(%rbp)
  402804:	00 
  402805:	eb 09                	jmp    402810 <rio_writen+0x64>
  402807:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40280e:	eb 1b                	jmp    40282b <rio_writen+0x7f>
  402810:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  402814:	48 29 45 e8          	sub    %rax,-0x18(%rbp)
  402818:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  40281c:	48 01 45 f8          	add    %rax,-0x8(%rbp)
  402820:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  402825:	75 aa                	jne    4027d1 <rio_writen+0x25>
  402827:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  40282b:	c9                   	leaveq 
  40282c:	c3                   	retq   

000000000040282d <urlencode>:
  40282d:	55                   	push   %rbp
  40282e:	48 89 e5             	mov    %rsp,%rbp
  402831:	48 83 ec 40          	sub    $0x40,%rsp
  402835:	48 89 7d d8          	mov    %rdi,-0x28(%rbp)
  402839:	48 89 75 d0          	mov    %rsi,-0x30(%rbp)
  40283d:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402844:	00 00 
  402846:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40284a:	31 c0                	xor    %eax,%eax
  40284c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402850:	48 c7 45 c8 ff ff ff 	movq   $0xffffffffffffffff,-0x38(%rbp)
  402857:	ff 
  402858:	48 89 c2             	mov    %rax,%rdx
  40285b:	b8 00 00 00 00       	mov    $0x0,%eax
  402860:	48 8b 4d c8          	mov    -0x38(%rbp),%rcx
  402864:	48 89 d7             	mov    %rdx,%rdi
  402867:	f2 ae                	repnz scas %es:(%rdi),%al
  402869:	48 89 c8             	mov    %rcx,%rax
  40286c:	48 f7 d0             	not    %rax
  40286f:	48 83 e8 01          	sub    $0x1,%rax
  402873:	89 45 ec             	mov    %eax,-0x14(%rbp)
  402876:	e9 26 01 00 00       	jmpq   4029a1 <urlencode+0x174>
  40287b:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40287f:	0f b6 00             	movzbl (%rax),%eax
  402882:	3c 2a                	cmp    $0x2a,%al
  402884:	74 63                	je     4028e9 <urlencode+0xbc>
  402886:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40288a:	0f b6 00             	movzbl (%rax),%eax
  40288d:	3c 2d                	cmp    $0x2d,%al
  40288f:	74 58                	je     4028e9 <urlencode+0xbc>
  402891:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402895:	0f b6 00             	movzbl (%rax),%eax
  402898:	3c 2e                	cmp    $0x2e,%al
  40289a:	74 4d                	je     4028e9 <urlencode+0xbc>
  40289c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028a0:	0f b6 00             	movzbl (%rax),%eax
  4028a3:	3c 5f                	cmp    $0x5f,%al
  4028a5:	74 42                	je     4028e9 <urlencode+0xbc>
  4028a7:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028ab:	0f b6 00             	movzbl (%rax),%eax
  4028ae:	3c 2f                	cmp    $0x2f,%al
  4028b0:	76 0b                	jbe    4028bd <urlencode+0x90>
  4028b2:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028b6:	0f b6 00             	movzbl (%rax),%eax
  4028b9:	3c 39                	cmp    $0x39,%al
  4028bb:	76 2c                	jbe    4028e9 <urlencode+0xbc>
  4028bd:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028c1:	0f b6 00             	movzbl (%rax),%eax
  4028c4:	3c 40                	cmp    $0x40,%al
  4028c6:	76 0b                	jbe    4028d3 <urlencode+0xa6>
  4028c8:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028cc:	0f b6 00             	movzbl (%rax),%eax
  4028cf:	3c 5a                	cmp    $0x5a,%al
  4028d1:	76 16                	jbe    4028e9 <urlencode+0xbc>
  4028d3:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028d7:	0f b6 00             	movzbl (%rax),%eax
  4028da:	3c 60                	cmp    $0x60,%al
  4028dc:	76 22                	jbe    402900 <urlencode+0xd3>
  4028de:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028e2:	0f b6 00             	movzbl (%rax),%eax
  4028e5:	3c 7a                	cmp    $0x7a,%al
  4028e7:	77 17                	ja     402900 <urlencode+0xd3>
  4028e9:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  4028ed:	0f b6 10             	movzbl (%rax),%edx
  4028f0:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  4028f4:	88 10                	mov    %dl,(%rax)
  4028f6:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  4028fb:	e9 9c 00 00 00       	jmpq   40299c <urlencode+0x16f>
  402900:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402904:	0f b6 00             	movzbl (%rax),%eax
  402907:	3c 20                	cmp    $0x20,%al
  402909:	75 11                	jne    40291c <urlencode+0xef>
  40290b:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40290f:	c6 00 2b             	movb   $0x2b,(%rax)
  402912:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  402917:	e9 80 00 00 00       	jmpq   40299c <urlencode+0x16f>
  40291c:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402920:	0f b6 00             	movzbl (%rax),%eax
  402923:	3c 1f                	cmp    $0x1f,%al
  402925:	76 0b                	jbe    402932 <urlencode+0x105>
  402927:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  40292b:	0f b6 00             	movzbl (%rax),%eax
  40292e:	84 c0                	test   %al,%al
  402930:	79 0b                	jns    40293d <urlencode+0x110>
  402932:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402936:	0f b6 00             	movzbl (%rax),%eax
  402939:	3c 09                	cmp    $0x9,%al
  40293b:	75 58                	jne    402995 <urlencode+0x168>
  40293d:	48 8b 45 d8          	mov    -0x28(%rbp),%rax
  402941:	0f b6 00             	movzbl (%rax),%eax
  402944:	0f b6 d0             	movzbl %al,%edx
  402947:	b9 7c 3e 40 00       	mov    $0x403e7c,%ecx
  40294c:	48 8d 45 f0          	lea    -0x10(%rbp),%rax
  402950:	48 89 ce             	mov    %rcx,%rsi
  402953:	48 89 c7             	mov    %rax,%rdi
  402956:	b8 00 00 00 00       	mov    $0x0,%eax
  40295b:	e8 00 e5 ff ff       	callq  400e60 <sprintf@plt>
  402960:	0f b6 45 f0          	movzbl -0x10(%rbp),%eax
  402964:	89 c2                	mov    %eax,%edx
  402966:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40296a:	88 10                	mov    %dl,(%rax)
  40296c:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  402971:	0f b6 45 f1          	movzbl -0xf(%rbp),%eax
  402975:	89 c2                	mov    %eax,%edx
  402977:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40297b:	88 10                	mov    %dl,(%rax)
  40297d:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  402982:	0f b6 45 f2          	movzbl -0xe(%rbp),%eax
  402986:	89 c2                	mov    %eax,%edx
  402988:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40298c:	88 10                	mov    %dl,(%rax)
  40298e:	48 83 45 d0 01       	addq   $0x1,-0x30(%rbp)
  402993:	eb 07                	jmp    40299c <urlencode+0x16f>
  402995:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40299a:	eb 1d                	jmp    4029b9 <urlencode+0x18c>
  40299c:	48 83 45 d8 01       	addq   $0x1,-0x28(%rbp)
  4029a1:	83 7d ec 00          	cmpl   $0x0,-0x14(%rbp)
  4029a5:	0f 95 c0             	setne  %al
  4029a8:	83 6d ec 01          	subl   $0x1,-0x14(%rbp)
  4029ac:	84 c0                	test   %al,%al
  4029ae:	0f 85 c7 fe ff ff    	jne    40287b <urlencode+0x4e>
  4029b4:	b8 00 00 00 00       	mov    $0x0,%eax
  4029b9:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  4029bd:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  4029c4:	00 00 
  4029c6:	74 05                	je     4029cd <urlencode+0x1a0>
  4029c8:	e8 13 e3 ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  4029cd:	c9                   	leaveq 
  4029ce:	c3                   	retq   

00000000004029cf <submitr>:
  4029cf:	55                   	push   %rbp
  4029d0:	48 89 e5             	mov    %rsp,%rbp
  4029d3:	48 81 ec 90 a0 00 00 	sub    $0xa090,%rsp
  4029da:	48 89 bd a8 5f ff ff 	mov    %rdi,-0xa058(%rbp)
  4029e1:	89 b5 a4 5f ff ff    	mov    %esi,-0xa05c(%rbp)
  4029e7:	48 89 95 98 5f ff ff 	mov    %rdx,-0xa068(%rbp)
  4029ee:	48 89 8d 90 5f ff ff 	mov    %rcx,-0xa070(%rbp)
  4029f5:	4c 89 85 88 5f ff ff 	mov    %r8,-0xa078(%rbp)
  4029fc:	4c 89 8d 80 5f ff ff 	mov    %r9,-0xa080(%rbp)
  402a03:	48 8b 45 10          	mov    0x10(%rbp),%rax
  402a07:	48 89 85 78 5f ff ff 	mov    %rax,-0xa088(%rbp)
  402a0e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402a15:	00 00 
  402a17:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402a1b:	31 c0                	xor    %eax,%eax
  402a1d:	c7 85 c8 5f ff ff 00 	movl   $0x0,-0xa038(%rbp)
  402a24:	00 00 00 
  402a27:	ba 00 00 00 00       	mov    $0x0,%edx
  402a2c:	be 01 00 00 00       	mov    $0x1,%esi
  402a31:	bf 02 00 00 00       	mov    $0x2,%edi
  402a36:	e8 55 e4 ff ff       	callq  400e90 <socket@plt>
  402a3b:	89 85 cc 5f ff ff    	mov    %eax,-0xa034(%rbp)
  402a41:	83 bd cc 5f ff ff 00 	cmpl   $0x0,-0xa034(%rbp)
  402a48:	79 42                	jns    402a8c <submitr+0xbd>
  402a4a:	ba 88 3e 40 00       	mov    $0x403e88,%edx
  402a4f:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402a56:	48 8b 0a             	mov    (%rdx),%rcx
  402a59:	48 89 08             	mov    %rcx,(%rax)
  402a5c:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402a60:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402a64:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402a68:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402a6c:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402a70:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402a74:	8b 4a 20             	mov    0x20(%rdx),%ecx
  402a77:	89 48 20             	mov    %ecx,0x20(%rax)
  402a7a:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
  402a7e:	66 89 50 24          	mov    %dx,0x24(%rax)
  402a82:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a87:	e9 54 07 00 00       	jmpq   4031e0 <submitr+0x811>
  402a8c:	48 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%rax
  402a93:	48 89 c7             	mov    %rax,%rdi
  402a96:	e8 e5 e2 ff ff       	callq  400d80 <gethostbyname@plt>
  402a9b:	48 89 85 b0 5f ff ff 	mov    %rax,-0xa050(%rbp)
  402aa2:	48 83 bd b0 5f ff ff 	cmpq   $0x0,-0xa050(%rbp)
  402aa9:	00 
  402aaa:	75 5e                	jne    402b0a <submitr+0x13b>
  402aac:	ba b0 3e 40 00       	mov    $0x403eb0,%edx
  402ab1:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402ab8:	48 8b 0a             	mov    (%rdx),%rcx
  402abb:	48 89 08             	mov    %rcx,(%rax)
  402abe:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402ac2:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402ac6:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402aca:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402ace:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402ad2:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402ad6:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402ada:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402ade:	8b 4a 28             	mov    0x28(%rdx),%ecx
  402ae1:	89 48 28             	mov    %ecx,0x28(%rax)
  402ae4:	0f b7 4a 2c          	movzwl 0x2c(%rdx),%ecx
  402ae8:	66 89 48 2c          	mov    %cx,0x2c(%rax)
  402aec:	0f b6 52 2e          	movzbl 0x2e(%rdx),%edx
  402af0:	88 50 2e             	mov    %dl,0x2e(%rax)
  402af3:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402af9:	89 c7                	mov    %eax,%edi
  402afb:	e8 40 e2 ff ff       	callq  400d40 <close@plt>
  402b00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b05:	e9 d6 06 00 00       	jmpq   4031e0 <submitr+0x811>
  402b0a:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  402b0e:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  402b15:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  402b1c:	00 
  402b1d:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  402b23:	48 8b 85 b0 5f ff ff 	mov    -0xa050(%rbp),%rax
  402b2a:	8b 40 14             	mov    0x14(%rax),%eax
  402b2d:	48 63 d0             	movslq %eax,%rdx
  402b30:	48 8b 85 b0 5f ff ff 	mov    -0xa050(%rbp),%rax
  402b37:	48 8b 40 18          	mov    0x18(%rax),%rax
  402b3b:	48 8b 00             	mov    (%rax),%rax
  402b3e:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  402b42:	48 83 c1 04          	add    $0x4,%rcx
  402b46:	48 89 ce             	mov    %rcx,%rsi
  402b49:	48 89 c7             	mov    %rax,%rdi
  402b4c:	e8 af e2 ff ff       	callq  400e00 <bcopy@plt>
  402b51:	8b 85 a4 5f ff ff    	mov    -0xa05c(%rbp),%eax
  402b57:	0f b7 c0             	movzwl %ax,%eax
  402b5a:	89 c7                	mov    %eax,%edi
  402b5c:	e8 9f e1 ff ff       	callq  400d00 <htons@plt>
  402b61:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  402b65:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  402b69:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402b6f:	ba 10 00 00 00       	mov    $0x10,%edx
  402b74:	48 89 ce             	mov    %rcx,%rsi
  402b77:	89 c7                	mov    %eax,%edi
  402b79:	e8 02 e3 ff ff       	callq  400e80 <connect@plt>
  402b7e:	85 c0                	test   %eax,%eax
  402b80:	79 56                	jns    402bd8 <submitr+0x209>
  402b82:	ba e0 3e 40 00       	mov    $0x403ee0,%edx
  402b87:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402b8e:	48 8b 0a             	mov    (%rdx),%rcx
  402b91:	48 89 08             	mov    %rcx,(%rax)
  402b94:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402b98:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402b9c:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402ba0:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402ba4:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402ba8:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402bac:	8b 4a 20             	mov    0x20(%rdx),%ecx
  402baf:	89 48 20             	mov    %ecx,0x20(%rax)
  402bb2:	0f b7 4a 24          	movzwl 0x24(%rdx),%ecx
  402bb6:	66 89 48 24          	mov    %cx,0x24(%rax)
  402bba:	0f b6 52 26          	movzbl 0x26(%rdx),%edx
  402bbe:	88 50 26             	mov    %dl,0x26(%rax)
  402bc1:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402bc7:	89 c7                	mov    %eax,%edi
  402bc9:	e8 72 e1 ff ff       	callq  400d40 <close@plt>
  402bce:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402bd3:	e9 08 06 00 00       	jmpq   4031e0 <submitr+0x811>
  402bd8:	48 8b 85 80 5f ff ff 	mov    -0xa080(%rbp),%rax
  402bdf:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402be6:	ff ff ff ff 
  402bea:	48 89 c2             	mov    %rax,%rdx
  402bed:	b8 00 00 00 00       	mov    $0x0,%eax
  402bf2:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402bf9:	48 89 d7             	mov    %rdx,%rdi
  402bfc:	f2 ae                	repnz scas %es:(%rdi),%al
  402bfe:	48 89 c8             	mov    %rcx,%rax
  402c01:	48 f7 d0             	not    %rax
  402c04:	48 83 e8 01          	sub    $0x1,%rax
  402c08:	48 89 85 b8 5f ff ff 	mov    %rax,-0xa048(%rbp)
  402c0f:	48 8b 85 98 5f ff ff 	mov    -0xa068(%rbp),%rax
  402c16:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402c1d:	ff ff ff ff 
  402c21:	48 89 c2             	mov    %rax,%rdx
  402c24:	b8 00 00 00 00       	mov    $0x0,%eax
  402c29:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402c30:	48 89 d7             	mov    %rdx,%rdi
  402c33:	f2 ae                	repnz scas %es:(%rdi),%al
  402c35:	48 89 c8             	mov    %rcx,%rax
  402c38:	48 f7 d0             	not    %rax
  402c3b:	48 8d 70 ff          	lea    -0x1(%rax),%rsi
  402c3f:	48 8b 85 90 5f ff ff 	mov    -0xa070(%rbp),%rax
  402c46:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402c4d:	ff ff ff ff 
  402c51:	48 89 c2             	mov    %rax,%rdx
  402c54:	b8 00 00 00 00       	mov    $0x0,%eax
  402c59:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402c60:	48 89 d7             	mov    %rdx,%rdi
  402c63:	f2 ae                	repnz scas %es:(%rdi),%al
  402c65:	48 89 c8             	mov    %rcx,%rax
  402c68:	48 f7 d0             	not    %rax
  402c6b:	48 83 e8 01          	sub    $0x1,%rax
  402c6f:	48 01 c6             	add    %rax,%rsi
  402c72:	48 8b 85 88 5f ff ff 	mov    -0xa078(%rbp),%rax
  402c79:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402c80:	ff ff ff ff 
  402c84:	48 89 c2             	mov    %rax,%rdx
  402c87:	b8 00 00 00 00       	mov    $0x0,%eax
  402c8c:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402c93:	48 89 d7             	mov    %rdx,%rdi
  402c96:	f2 ae                	repnz scas %es:(%rdi),%al
  402c98:	48 89 c8             	mov    %rcx,%rax
  402c9b:	48 f7 d0             	not    %rax
  402c9e:	48 83 e8 01          	sub    $0x1,%rax
  402ca2:	48 8d 0c 06          	lea    (%rsi,%rax,1),%rcx
  402ca6:	48 8b 95 b8 5f ff ff 	mov    -0xa048(%rbp),%rdx
  402cad:	48 89 d0             	mov    %rdx,%rax
  402cb0:	48 01 c0             	add    %rax,%rax
  402cb3:	48 01 d0             	add    %rdx,%rax
  402cb6:	48 01 c8             	add    %rcx,%rax
  402cb9:	48 83 e8 80          	sub    $0xffffffffffffff80,%rax
  402cbd:	48 89 85 c0 5f ff ff 	mov    %rax,-0xa040(%rbp)
  402cc4:	48 81 bd c0 5f ff ff 	cmpq   $0x2000,-0xa040(%rbp)
  402ccb:	00 20 00 00 
  402ccf:	76 59                	jbe    402d2a <submitr+0x35b>
  402cd1:	ba 08 3f 40 00       	mov    $0x403f08,%edx
  402cd6:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402cdd:	48 8b 0a             	mov    (%rdx),%rcx
  402ce0:	48 89 08             	mov    %rcx,(%rax)
  402ce3:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402ce7:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402ceb:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402cef:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402cf3:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402cf7:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402cfb:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402cff:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402d03:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402d07:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402d0b:	48 8b 52 30          	mov    0x30(%rdx),%rdx
  402d0f:	48 89 50 30          	mov    %rdx,0x30(%rax)
  402d13:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402d19:	89 c7                	mov    %eax,%edi
  402d1b:	e8 20 e0 ff ff       	callq  400d40 <close@plt>
  402d20:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d25:	e9 b6 04 00 00       	jmpq   4031e0 <submitr+0x811>
  402d2a:	48 8d 85 e0 9f ff ff 	lea    -0x6020(%rbp),%rax
  402d31:	48 89 c6             	mov    %rax,%rsi
  402d34:	b8 00 00 00 00       	mov    $0x0,%eax
  402d39:	ba 00 04 00 00       	mov    $0x400,%edx
  402d3e:	48 89 f7             	mov    %rsi,%rdi
  402d41:	48 89 d1             	mov    %rdx,%rcx
  402d44:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402d47:	48 8d 95 e0 9f ff ff 	lea    -0x6020(%rbp),%rdx
  402d4e:	48 8b 85 80 5f ff ff 	mov    -0xa080(%rbp),%rax
  402d55:	48 89 d6             	mov    %rdx,%rsi
  402d58:	48 89 c7             	mov    %rax,%rdi
  402d5b:	e8 cd fa ff ff       	callq  40282d <urlencode>
  402d60:	85 c0                	test   %eax,%eax
  402d62:	79 70                	jns    402dd4 <submitr+0x405>
  402d64:	ba 40 3f 40 00       	mov    $0x403f40,%edx
  402d69:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402d70:	48 8b 0a             	mov    (%rdx),%rcx
  402d73:	48 89 08             	mov    %rcx,(%rax)
  402d76:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402d7a:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402d7e:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402d82:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402d86:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402d8a:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402d8e:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402d92:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402d96:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402d9a:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402d9e:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402da2:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402da6:	48 8b 4a 38          	mov    0x38(%rdx),%rcx
  402daa:	48 89 48 38          	mov    %rcx,0x38(%rax)
  402dae:	0f b7 4a 40          	movzwl 0x40(%rdx),%ecx
  402db2:	66 89 48 40          	mov    %cx,0x40(%rax)
  402db6:	0f b6 52 42          	movzbl 0x42(%rdx),%edx
  402dba:	88 50 42             	mov    %dl,0x42(%rax)
  402dbd:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402dc3:	89 c7                	mov    %eax,%edi
  402dc5:	e8 76 df ff ff       	callq  400d40 <close@plt>
  402dca:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402dcf:	e9 0c 04 00 00       	jmpq   4031e0 <submitr+0x811>
  402dd4:	be 88 3f 40 00       	mov    $0x403f88,%esi
  402dd9:	4c 8b 85 a8 5f ff ff 	mov    -0xa058(%rbp),%r8
  402de0:	48 8d bd e0 9f ff ff 	lea    -0x6020(%rbp),%rdi
  402de7:	48 8b 8d 98 5f ff ff 	mov    -0xa068(%rbp),%rcx
  402dee:	48 8b 95 90 5f ff ff 	mov    -0xa070(%rbp),%rdx
  402df5:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402dfc:	4d 89 c1             	mov    %r8,%r9
  402dff:	49 89 f8             	mov    %rdi,%r8
  402e02:	48 89 c7             	mov    %rax,%rdi
  402e05:	b8 00 00 00 00       	mov    $0x0,%eax
  402e0a:	e8 51 e0 ff ff       	callq  400e60 <sprintf@plt>
  402e0f:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402e16:	48 c7 85 70 5f ff ff 	movq   $0xffffffffffffffff,-0xa090(%rbp)
  402e1d:	ff ff ff ff 
  402e21:	48 89 c2             	mov    %rax,%rdx
  402e24:	b8 00 00 00 00       	mov    $0x0,%eax
  402e29:	48 8b 8d 70 5f ff ff 	mov    -0xa090(%rbp),%rcx
  402e30:	48 89 d7             	mov    %rdx,%rdi
  402e33:	f2 ae                	repnz scas %es:(%rdi),%al
  402e35:	48 89 c8             	mov    %rcx,%rax
  402e38:	48 f7 d0             	not    %rax
  402e3b:	48 8d 50 ff          	lea    -0x1(%rax),%rdx
  402e3f:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402e46:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402e4c:	48 89 ce             	mov    %rcx,%rsi
  402e4f:	89 c7                	mov    %eax,%edi
  402e51:	e8 56 f9 ff ff       	callq  4027ac <rio_writen>
  402e56:	48 85 c0             	test   %rax,%rax
  402e59:	79 60                	jns    402ebb <submitr+0x4ec>
  402e5b:	ba c8 3f 40 00       	mov    $0x403fc8,%edx
  402e60:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402e67:	48 8b 0a             	mov    (%rdx),%rcx
  402e6a:	48 89 08             	mov    %rcx,(%rax)
  402e6d:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402e71:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402e75:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402e79:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402e7d:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402e81:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402e85:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402e89:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402e8d:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402e91:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402e95:	0f b7 4a 30          	movzwl 0x30(%rdx),%ecx
  402e99:	66 89 48 30          	mov    %cx,0x30(%rax)
  402e9d:	0f b6 52 32          	movzbl 0x32(%rdx),%edx
  402ea1:	88 50 32             	mov    %dl,0x32(%rax)
  402ea4:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402eaa:	89 c7                	mov    %eax,%edi
  402eac:	e8 8f de ff ff       	callq  400d40 <close@plt>
  402eb1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402eb6:	e9 25 03 00 00       	jmpq   4031e0 <submitr+0x811>
  402ebb:	8b 95 cc 5f ff ff    	mov    -0xa034(%rbp),%edx
  402ec1:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402ec8:	89 d6                	mov    %edx,%esi
  402eca:	48 89 c7             	mov    %rax,%rdi
  402ecd:	e8 0c f7 ff ff       	callq  4025de <rio_readinitb>
  402ed2:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402ed9:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402ee0:	ba 00 20 00 00       	mov    $0x2000,%edx
  402ee5:	48 89 ce             	mov    %rcx,%rsi
  402ee8:	48 89 c7             	mov    %rax,%rdi
  402eeb:	e8 20 f8 ff ff       	callq  402710 <rio_readlineb>
  402ef0:	48 85 c0             	test   %rax,%rax
  402ef3:	7f 66                	jg     402f5b <submitr+0x58c>
  402ef5:	ba 00 40 40 00       	mov    $0x404000,%edx
  402efa:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402f01:	48 8b 0a             	mov    (%rdx),%rcx
  402f04:	48 89 08             	mov    %rcx,(%rax)
  402f07:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402f0b:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402f0f:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402f13:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402f17:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402f1b:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402f1f:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402f23:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402f27:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402f2b:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402f2f:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402f33:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402f37:	8b 4a 38             	mov    0x38(%rdx),%ecx
  402f3a:	89 48 38             	mov    %ecx,0x38(%rax)
  402f3d:	0f b6 52 3c          	movzbl 0x3c(%rdx),%edx
  402f41:	88 50 3c             	mov    %dl,0x3c(%rax)
  402f44:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  402f4a:	89 c7                	mov    %eax,%edi
  402f4c:	e8 ef dd ff ff       	callq  400d40 <close@plt>
  402f51:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f56:	e9 85 02 00 00       	jmpq   4031e0 <submitr+0x811>
  402f5b:	be 3d 40 40 00       	mov    $0x40403d,%esi
  402f60:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  402f67:	48 8d bd e0 df ff ff 	lea    -0x2020(%rbp),%rdi
  402f6e:	48 8d 8d c8 5f ff ff 	lea    -0xa038(%rbp),%rcx
  402f75:	48 8d 95 e0 bf ff ff 	lea    -0x4020(%rbp),%rdx
  402f7c:	49 89 f8             	mov    %rdi,%r8
  402f7f:	48 89 c7             	mov    %rax,%rdi
  402f82:	b8 00 00 00 00       	mov    $0x0,%eax
  402f87:	e8 54 de ff ff       	callq  400de0 <__isoc99_sscanf@plt>
  402f8c:	e9 82 00 00 00       	jmpq   403013 <submitr+0x644>
  402f91:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  402f98:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  402f9f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402fa4:	48 89 ce             	mov    %rcx,%rsi
  402fa7:	48 89 c7             	mov    %rax,%rdi
  402faa:	e8 61 f7 ff ff       	callq  402710 <rio_readlineb>
  402faf:	48 85 c0             	test   %rax,%rax
  402fb2:	7f 5f                	jg     403013 <submitr+0x644>
  402fb4:	ba 50 40 40 00       	mov    $0x404050,%edx
  402fb9:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  402fc0:	48 8b 0a             	mov    (%rdx),%rcx
  402fc3:	48 89 08             	mov    %rcx,(%rax)
  402fc6:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  402fca:	48 89 48 08          	mov    %rcx,0x8(%rax)
  402fce:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  402fd2:	48 89 48 10          	mov    %rcx,0x10(%rax)
  402fd6:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  402fda:	48 89 48 18          	mov    %rcx,0x18(%rax)
  402fde:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  402fe2:	48 89 48 20          	mov    %rcx,0x20(%rax)
  402fe6:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  402fea:	48 89 48 28          	mov    %rcx,0x28(%rax)
  402fee:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  402ff2:	48 89 48 30          	mov    %rcx,0x30(%rax)
  402ff6:	8b 52 38             	mov    0x38(%rdx),%edx
  402ff9:	89 50 38             	mov    %edx,0x38(%rax)
  402ffc:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  403002:	89 c7                	mov    %eax,%edi
  403004:	e8 37 dd ff ff       	callq  400d40 <close@plt>
  403009:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40300e:	e9 cd 01 00 00       	jmpq   4031e0 <submitr+0x811>
  403013:	48 8d 85 e0 7f ff ff 	lea    -0x8020(%rbp),%rax
  40301a:	48 89 c2             	mov    %rax,%rdx
  40301d:	b8 8c 40 40 00       	mov    $0x40408c,%eax
  403022:	b9 03 00 00 00       	mov    $0x3,%ecx
  403027:	48 89 d6             	mov    %rdx,%rsi
  40302a:	48 89 c7             	mov    %rax,%rdi
  40302d:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  40302f:	0f 97 c2             	seta   %dl
  403032:	0f 92 c0             	setb   %al
  403035:	89 d1                	mov    %edx,%ecx
  403037:	28 c1                	sub    %al,%cl
  403039:	89 c8                	mov    %ecx,%eax
  40303b:	0f be c0             	movsbl %al,%eax
  40303e:	85 c0                	test   %eax,%eax
  403040:	0f 85 4b ff ff ff    	jne    402f91 <submitr+0x5c2>
  403046:	48 8d 8d e0 7f ff ff 	lea    -0x8020(%rbp),%rcx
  40304d:	48 8d 85 d0 5f ff ff 	lea    -0xa030(%rbp),%rax
  403054:	ba 00 20 00 00       	mov    $0x2000,%edx
  403059:	48 89 ce             	mov    %rcx,%rsi
  40305c:	48 89 c7             	mov    %rax,%rdi
  40305f:	e8 ac f6 ff ff       	callq  402710 <rio_readlineb>
  403064:	48 85 c0             	test   %rax,%rax
  403067:	7f 6e                	jg     4030d7 <submitr+0x708>
  403069:	ba 90 40 40 00       	mov    $0x404090,%edx
  40306e:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  403075:	48 8b 0a             	mov    (%rdx),%rcx
  403078:	48 89 08             	mov    %rcx,(%rax)
  40307b:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  40307f:	48 89 48 08          	mov    %rcx,0x8(%rax)
  403083:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  403087:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40308b:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  40308f:	48 89 48 18          	mov    %rcx,0x18(%rax)
  403093:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  403097:	48 89 48 20          	mov    %rcx,0x20(%rax)
  40309b:	48 8b 4a 28          	mov    0x28(%rdx),%rcx
  40309f:	48 89 48 28          	mov    %rcx,0x28(%rax)
  4030a3:	48 8b 4a 30          	mov    0x30(%rdx),%rcx
  4030a7:	48 89 48 30          	mov    %rcx,0x30(%rax)
  4030ab:	8b 4a 38             	mov    0x38(%rdx),%ecx
  4030ae:	89 48 38             	mov    %ecx,0x38(%rax)
  4030b1:	0f b7 4a 3c          	movzwl 0x3c(%rdx),%ecx
  4030b5:	66 89 48 3c          	mov    %cx,0x3c(%rax)
  4030b9:	0f b6 52 3e          	movzbl 0x3e(%rdx),%edx
  4030bd:	88 50 3e             	mov    %dl,0x3e(%rax)
  4030c0:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  4030c6:	89 c7                	mov    %eax,%edi
  4030c8:	e8 73 dc ff ff       	callq  400d40 <close@plt>
  4030cd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4030d2:	e9 09 01 00 00       	jmpq   4031e0 <submitr+0x811>
  4030d7:	8b 85 c8 5f ff ff    	mov    -0xa038(%rbp),%eax
  4030dd:	3d c8 00 00 00       	cmp    $0xc8,%eax
  4030e2:	74 3d                	je     403121 <submitr+0x752>
  4030e4:	8b 95 c8 5f ff ff    	mov    -0xa038(%rbp),%edx
  4030ea:	be d0 40 40 00       	mov    $0x4040d0,%esi
  4030ef:	48 8d 8d e0 df ff ff 	lea    -0x2020(%rbp),%rcx
  4030f6:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  4030fd:	48 89 c7             	mov    %rax,%rdi
  403100:	b8 00 00 00 00       	mov    $0x0,%eax
  403105:	e8 56 dd ff ff       	callq  400e60 <sprintf@plt>
  40310a:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  403110:	89 c7                	mov    %eax,%edi
  403112:	e8 29 dc ff ff       	callq  400d40 <close@plt>
  403117:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40311c:	e9 bf 00 00 00       	jmpq   4031e0 <submitr+0x811>
  403121:	48 8d 95 e0 7f ff ff 	lea    -0x8020(%rbp),%rdx
  403128:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  40312f:	48 89 d6             	mov    %rdx,%rsi
  403132:	48 89 c7             	mov    %rax,%rdi
  403135:	e8 76 db ff ff       	callq  400cb0 <strcpy@plt>
  40313a:	8b 85 cc 5f ff ff    	mov    -0xa034(%rbp),%eax
  403140:	89 c7                	mov    %eax,%edi
  403142:	e8 f9 db ff ff       	callq  400d40 <close@plt>
  403147:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  40314e:	48 89 c2             	mov    %rax,%rdx
  403151:	b8 fd 40 40 00       	mov    $0x4040fd,%eax
  403156:	b9 04 00 00 00       	mov    $0x4,%ecx
  40315b:	48 89 d6             	mov    %rdx,%rsi
  40315e:	48 89 c7             	mov    %rax,%rdi
  403161:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403163:	0f 97 c2             	seta   %dl
  403166:	0f 92 c0             	setb   %al
  403169:	89 d1                	mov    %edx,%ecx
  40316b:	28 c1                	sub    %al,%cl
  40316d:	89 c8                	mov    %ecx,%eax
  40316f:	0f be c0             	movsbl %al,%eax
  403172:	85 c0                	test   %eax,%eax
  403174:	74 5e                	je     4031d4 <submitr+0x805>
  403176:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  40317d:	48 89 c2             	mov    %rax,%rdx
  403180:	b8 01 41 40 00       	mov    $0x404101,%eax
  403185:	b9 05 00 00 00       	mov    $0x5,%ecx
  40318a:	48 89 d6             	mov    %rdx,%rsi
  40318d:	48 89 c7             	mov    %rax,%rdi
  403190:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  403192:	0f 97 c2             	seta   %dl
  403195:	0f 92 c0             	setb   %al
  403198:	89 d1                	mov    %edx,%ecx
  40319a:	28 c1                	sub    %al,%cl
  40319c:	89 c8                	mov    %ecx,%eax
  40319e:	0f be c0             	movsbl %al,%eax
  4031a1:	85 c0                	test   %eax,%eax
  4031a3:	74 2f                	je     4031d4 <submitr+0x805>
  4031a5:	48 8b 85 78 5f ff ff 	mov    -0xa088(%rbp),%rax
  4031ac:	48 89 c2             	mov    %rax,%rdx
  4031af:	b8 06 41 40 00       	mov    $0x404106,%eax
  4031b4:	b9 03 00 00 00       	mov    $0x3,%ecx
  4031b9:	48 89 d6             	mov    %rdx,%rsi
  4031bc:	48 89 c7             	mov    %rax,%rdi
  4031bf:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  4031c1:	0f 97 c2             	seta   %dl
  4031c4:	0f 92 c0             	setb   %al
  4031c7:	89 d1                	mov    %edx,%ecx
  4031c9:	28 c1                	sub    %al,%cl
  4031cb:	89 c8                	mov    %ecx,%eax
  4031cd:	0f be c0             	movsbl %al,%eax
  4031d0:	85 c0                	test   %eax,%eax
  4031d2:	75 07                	jne    4031db <submitr+0x80c>
  4031d4:	b8 00 00 00 00       	mov    $0x0,%eax
  4031d9:	eb 05                	jmp    4031e0 <submitr+0x811>
  4031db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4031e0:	48 8b 75 f8          	mov    -0x8(%rbp),%rsi
  4031e4:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  4031eb:	00 00 
  4031ed:	74 05                	je     4031f4 <submitr+0x825>
  4031ef:	e8 ec da ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  4031f4:	c9                   	leaveq 
  4031f5:	c3                   	retq   

00000000004031f6 <init_timeout>:
  4031f6:	55                   	push   %rbp
  4031f7:	48 89 e5             	mov    %rsp,%rbp
  4031fa:	48 83 ec 10          	sub    $0x10,%rsp
  4031fe:	89 7d fc             	mov    %edi,-0x4(%rbp)
  403201:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  403205:	74 28                	je     40322f <init_timeout+0x39>
  403207:	83 7d fc 00          	cmpl   $0x0,-0x4(%rbp)
  40320b:	79 07                	jns    403214 <init_timeout+0x1e>
  40320d:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
  403214:	be a8 25 40 00       	mov    $0x4025a8,%esi
  403219:	bf 0e 00 00 00       	mov    $0xe,%edi
  40321e:	e8 4d db ff ff       	callq  400d70 <signal@plt>
  403223:	8b 45 fc             	mov    -0x4(%rbp),%eax
  403226:	89 c7                	mov    %eax,%edi
  403228:	e8 03 db ff ff       	callq  400d30 <alarm@plt>
  40322d:	eb 01                	jmp    403230 <init_timeout+0x3a>
  40322f:	90                   	nop
  403230:	c9                   	leaveq 
  403231:	c3                   	retq   

0000000000403232 <init_driver>:
  403232:	55                   	push   %rbp
  403233:	48 89 e5             	mov    %rsp,%rbp
  403236:	48 83 ec 50          	sub    $0x50,%rsp
  40323a:	48 89 7d b8          	mov    %rdi,-0x48(%rbp)
  40323e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  403245:	00 00 
  403247:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  40324b:	31 c0                	xor    %eax,%eax
  40324d:	48 c7 45 c8 09 41 40 	movq   $0x404109,-0x38(%rbp)
  403254:	00 
  403255:	c7 45 d8 9a 3c 00 00 	movl   $0x3c9a,-0x28(%rbp)
  40325c:	be 01 00 00 00       	mov    $0x1,%esi
  403261:	bf 0d 00 00 00       	mov    $0xd,%edi
  403266:	e8 05 db ff ff       	callq  400d70 <signal@plt>
  40326b:	be 01 00 00 00       	mov    $0x1,%esi
  403270:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403275:	e8 f6 da ff ff       	callq  400d70 <signal@plt>
  40327a:	be 01 00 00 00       	mov    $0x1,%esi
  40327f:	bf 1d 00 00 00       	mov    $0x1d,%edi
  403284:	e8 e7 da ff ff       	callq  400d70 <signal@plt>
  403289:	ba 00 00 00 00       	mov    $0x0,%edx
  40328e:	be 01 00 00 00       	mov    $0x1,%esi
  403293:	bf 02 00 00 00       	mov    $0x2,%edi
  403298:	e8 f3 db ff ff       	callq  400e90 <socket@plt>
  40329d:	89 45 dc             	mov    %eax,-0x24(%rbp)
  4032a0:	83 7d dc 00          	cmpl   $0x0,-0x24(%rbp)
  4032a4:	79 3f                	jns    4032e5 <init_driver+0xb3>
  4032a6:	ba 88 3e 40 00       	mov    $0x403e88,%edx
  4032ab:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4032af:	48 8b 0a             	mov    (%rdx),%rcx
  4032b2:	48 89 08             	mov    %rcx,(%rax)
  4032b5:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4032b9:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4032bd:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4032c1:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4032c5:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  4032c9:	48 89 48 18          	mov    %rcx,0x18(%rax)
  4032cd:	8b 4a 20             	mov    0x20(%rdx),%ecx
  4032d0:	89 48 20             	mov    %ecx,0x20(%rax)
  4032d3:	0f b7 52 24          	movzwl 0x24(%rdx),%edx
  4032d7:	66 89 50 24          	mov    %dx,0x24(%rax)
  4032db:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4032e0:	e9 5a 01 00 00       	jmpq   40343f <init_driver+0x20d>
  4032e5:	48 8b 45 c8          	mov    -0x38(%rbp),%rax
  4032e9:	48 89 c7             	mov    %rax,%rdi
  4032ec:	e8 8f da ff ff       	callq  400d80 <gethostbyname@plt>
  4032f1:	48 89 45 d0          	mov    %rax,-0x30(%rbp)
  4032f5:	48 83 7d d0 00       	cmpq   $0x0,-0x30(%rbp)
  4032fa:	75 58                	jne    403354 <init_driver+0x122>
  4032fc:	ba b0 3e 40 00       	mov    $0x403eb0,%edx
  403301:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  403305:	48 8b 0a             	mov    (%rdx),%rcx
  403308:	48 89 08             	mov    %rcx,(%rax)
  40330b:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  40330f:	48 89 48 08          	mov    %rcx,0x8(%rax)
  403313:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  403317:	48 89 48 10          	mov    %rcx,0x10(%rax)
  40331b:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  40331f:	48 89 48 18          	mov    %rcx,0x18(%rax)
  403323:	48 8b 4a 20          	mov    0x20(%rdx),%rcx
  403327:	48 89 48 20          	mov    %rcx,0x20(%rax)
  40332b:	8b 4a 28             	mov    0x28(%rdx),%ecx
  40332e:	89 48 28             	mov    %ecx,0x28(%rax)
  403331:	0f b7 4a 2c          	movzwl 0x2c(%rdx),%ecx
  403335:	66 89 48 2c          	mov    %cx,0x2c(%rax)
  403339:	0f b6 52 2e          	movzbl 0x2e(%rdx),%edx
  40333d:	88 50 2e             	mov    %dl,0x2e(%rax)
  403340:	8b 45 dc             	mov    -0x24(%rbp),%eax
  403343:	89 c7                	mov    %eax,%edi
  403345:	e8 f6 d9 ff ff       	callq  400d40 <close@plt>
  40334a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40334f:	e9 eb 00 00 00       	jmpq   40343f <init_driver+0x20d>
  403354:	48 8d 45 e0          	lea    -0x20(%rbp),%rax
  403358:	48 c7 00 00 00 00 00 	movq   $0x0,(%rax)
  40335f:	48 c7 40 08 00 00 00 	movq   $0x0,0x8(%rax)
  403366:	00 
  403367:	66 c7 45 e0 02 00    	movw   $0x2,-0x20(%rbp)
  40336d:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  403371:	8b 40 14             	mov    0x14(%rax),%eax
  403374:	48 63 d0             	movslq %eax,%rdx
  403377:	48 8b 45 d0          	mov    -0x30(%rbp),%rax
  40337b:	48 8b 40 18          	mov    0x18(%rax),%rax
  40337f:	48 8b 00             	mov    (%rax),%rax
  403382:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  403386:	48 83 c1 04          	add    $0x4,%rcx
  40338a:	48 89 ce             	mov    %rcx,%rsi
  40338d:	48 89 c7             	mov    %rax,%rdi
  403390:	e8 6b da ff ff       	callq  400e00 <bcopy@plt>
  403395:	8b 45 d8             	mov    -0x28(%rbp),%eax
  403398:	0f b7 c0             	movzwl %ax,%eax
  40339b:	89 c7                	mov    %eax,%edi
  40339d:	e8 5e d9 ff ff       	callq  400d00 <htons@plt>
  4033a2:	66 89 45 e2          	mov    %ax,-0x1e(%rbp)
  4033a6:	48 8d 4d e0          	lea    -0x20(%rbp),%rcx
  4033aa:	8b 45 dc             	mov    -0x24(%rbp),%eax
  4033ad:	ba 10 00 00 00       	mov    $0x10,%edx
  4033b2:	48 89 ce             	mov    %rcx,%rsi
  4033b5:	89 c7                	mov    %eax,%edi
  4033b7:	e8 c4 da ff ff       	callq  400e80 <connect@plt>
  4033bc:	85 c0                	test   %eax,%eax
  4033be:	79 5a                	jns    40341a <init_driver+0x1e8>
  4033c0:	48 8b 55 c8          	mov    -0x38(%rbp),%rdx
  4033c4:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4033c8:	48 89 d6             	mov    %rdx,%rsi
  4033cb:	48 89 c7             	mov    %rax,%rdi
  4033ce:	e8 dd d8 ff ff       	callq  400cb0 <strcpy@plt>
  4033d3:	ba 18 41 40 00       	mov    $0x404118,%edx
  4033d8:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  4033dc:	48 8b 0a             	mov    (%rdx),%rcx
  4033df:	48 89 08             	mov    %rcx,(%rax)
  4033e2:	48 8b 4a 08          	mov    0x8(%rdx),%rcx
  4033e6:	48 89 48 08          	mov    %rcx,0x8(%rax)
  4033ea:	48 8b 4a 10          	mov    0x10(%rdx),%rcx
  4033ee:	48 89 48 10          	mov    %rcx,0x10(%rax)
  4033f2:	48 8b 4a 18          	mov    0x18(%rdx),%rcx
  4033f6:	48 89 48 18          	mov    %rcx,0x18(%rax)
  4033fa:	0f b7 4a 20          	movzwl 0x20(%rdx),%ecx
  4033fe:	66 89 48 20          	mov    %cx,0x20(%rax)
  403402:	0f b6 52 22          	movzbl 0x22(%rdx),%edx
  403406:	88 50 22             	mov    %dl,0x22(%rax)
  403409:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40340c:	89 c7                	mov    %eax,%edi
  40340e:	e8 2d d9 ff ff       	callq  400d40 <close@plt>
  403413:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  403418:	eb 25                	jmp    40343f <init_driver+0x20d>
  40341a:	8b 45 dc             	mov    -0x24(%rbp),%eax
  40341d:	89 c7                	mov    %eax,%edi
  40341f:	e8 1c d9 ff ff       	callq  400d40 <close@plt>
  403424:	ba 06 41 40 00       	mov    $0x404106,%edx
  403429:	48 8b 45 b8          	mov    -0x48(%rbp),%rax
  40342d:	0f b7 0a             	movzwl (%rdx),%ecx
  403430:	66 89 08             	mov    %cx,(%rax)
  403433:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  403437:	88 50 02             	mov    %dl,0x2(%rax)
  40343a:	b8 00 00 00 00       	mov    $0x0,%eax
  40343f:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  403443:	64 48 33 14 25 28 00 	xor    %fs:0x28,%rdx
  40344a:	00 00 
  40344c:	74 05                	je     403453 <init_driver+0x221>
  40344e:	e8 8d d8 ff ff       	callq  400ce0 <__stack_chk_fail@plt>
  403453:	c9                   	leaveq 
  403454:	c3                   	retq   

0000000000403455 <driver_post>:
  403455:	55                   	push   %rbp
  403456:	48 89 e5             	mov    %rsp,%rbp
  403459:	48 83 ec 50          	sub    $0x50,%rsp
  40345d:	48 89 7d e8          	mov    %rdi,-0x18(%rbp)
  403461:	48 89 75 e0          	mov    %rsi,-0x20(%rbp)
  403465:	48 89 55 d8          	mov    %rdx,-0x28(%rbp)
  403469:	48 89 4d d0          	mov    %rcx,-0x30(%rbp)
  40346d:	44 89 45 cc          	mov    %r8d,-0x34(%rbp)
  403471:	4c 89 4d c0          	mov    %r9,-0x40(%rbp)
  403475:	83 7d cc 00          	cmpl   $0x0,-0x34(%rbp)
  403479:	74 36                	je     4034b1 <driver_post+0x5c>
  40347b:	b8 3b 41 40 00       	mov    $0x40413b,%eax
  403480:	48 8b 55 d0          	mov    -0x30(%rbp),%rdx
  403484:	48 89 d6             	mov    %rdx,%rsi
  403487:	48 89 c7             	mov    %rax,%rdi
  40348a:	b8 00 00 00 00       	mov    $0x0,%eax
  40348f:	e8 7c d8 ff ff       	callq  400d10 <printf@plt>
  403494:	ba 06 41 40 00       	mov    $0x404106,%edx
  403499:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  40349d:	0f b7 0a             	movzwl (%rdx),%ecx
  4034a0:	66 89 08             	mov    %cx,(%rax)
  4034a3:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  4034a7:	88 50 02             	mov    %dl,0x2(%rax)
  4034aa:	b8 00 00 00 00       	mov    $0x0,%eax
  4034af:	eb 68                	jmp    403519 <driver_post+0xc4>
  4034b1:	48 83 7d e8 00       	cmpq   $0x0,-0x18(%rbp)
  4034b6:	74 46                	je     4034fe <driver_post+0xa9>
  4034b8:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4034bc:	0f b6 00             	movzbl (%rax),%eax
  4034bf:	84 c0                	test   %al,%al
  4034c1:	74 3b                	je     4034fe <driver_post+0xa9>
  4034c3:	48 8b 7d d0          	mov    -0x30(%rbp),%rdi
  4034c7:	48 8b 75 d8          	mov    -0x28(%rbp),%rsi
  4034cb:	48 8b 55 e8          	mov    -0x18(%rbp),%rdx
  4034cf:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4034d3:	48 8b 4d c0          	mov    -0x40(%rbp),%rcx
  4034d7:	48 89 0c 24          	mov    %rcx,(%rsp)
  4034db:	49 89 f9             	mov    %rdi,%r9
  4034de:	49 89 f0             	mov    %rsi,%r8
  4034e1:	48 89 d1             	mov    %rdx,%rcx
  4034e4:	48 89 c2             	mov    %rax,%rdx
  4034e7:	be 9a 3c 00 00       	mov    $0x3c9a,%esi
  4034ec:	bf 09 41 40 00       	mov    $0x404109,%edi
  4034f1:	e8 d9 f4 ff ff       	callq  4029cf <submitr>
  4034f6:	89 45 fc             	mov    %eax,-0x4(%rbp)
  4034f9:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4034fc:	eb 1b                	jmp    403519 <driver_post+0xc4>
  4034fe:	ba 06 41 40 00       	mov    $0x404106,%edx
  403503:	48 8b 45 c0          	mov    -0x40(%rbp),%rax
  403507:	0f b7 0a             	movzwl (%rdx),%ecx
  40350a:	66 89 08             	mov    %cx,(%rax)
  40350d:	0f b6 52 02          	movzbl 0x2(%rdx),%edx
  403511:	88 50 02             	mov    %dl,0x2(%rax)
  403514:	b8 00 00 00 00       	mov    $0x0,%eax
  403519:	c9                   	leaveq 
  40351a:	c3                   	retq   
  40351b:	90                   	nop

000000000040351c <check>:
  40351c:	55                   	push   %rbp
  40351d:	48 89 e5             	mov    %rsp,%rbp
  403520:	53                   	push   %rbx
  403521:	89 7d e4             	mov    %edi,-0x1c(%rbp)
  403524:	8b 45 e4             	mov    -0x1c(%rbp),%eax
  403527:	c1 e8 1c             	shr    $0x1c,%eax
  40352a:	85 c0                	test   %eax,%eax
  40352c:	75 07                	jne    403535 <check+0x19>
  40352e:	b8 00 00 00 00       	mov    $0x0,%eax
  403533:	eb 37                	jmp    40356c <check+0x50>
  403535:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  40353c:	eb 23                	jmp    403561 <check+0x45>
  40353e:	8b 45 f4             	mov    -0xc(%rbp),%eax
  403541:	8b 55 e4             	mov    -0x1c(%rbp),%edx
  403544:	89 d3                	mov    %edx,%ebx
  403546:	89 c1                	mov    %eax,%ecx
  403548:	d3 eb                	shr    %cl,%ebx
  40354a:	89 d8                	mov    %ebx,%eax
  40354c:	25 ff 00 00 00       	and    $0xff,%eax
  403551:	83 f8 0a             	cmp    $0xa,%eax
  403554:	75 07                	jne    40355d <check+0x41>
  403556:	b8 00 00 00 00       	mov    $0x0,%eax
  40355b:	eb 0f                	jmp    40356c <check+0x50>
  40355d:	83 45 f4 08          	addl   $0x8,-0xc(%rbp)
  403561:	83 7d f4 1f          	cmpl   $0x1f,-0xc(%rbp)
  403565:	7e d7                	jle    40353e <check+0x22>
  403567:	b8 01 00 00 00       	mov    $0x1,%eax
  40356c:	5b                   	pop    %rbx
  40356d:	5d                   	pop    %rbp
  40356e:	c3                   	retq   

000000000040356f <gencookie>:
  40356f:	55                   	push   %rbp
  403570:	48 89 e5             	mov    %rsp,%rbp
  403573:	48 83 ec 20          	sub    $0x20,%rsp
  403577:	89 7d ec             	mov    %edi,-0x14(%rbp)
  40357a:	8b 45 ec             	mov    -0x14(%rbp),%eax
  40357d:	83 c0 01             	add    $0x1,%eax
  403580:	89 c7                	mov    %eax,%edi
  403582:	e8 09 d7 ff ff       	callq  400c90 <srandom@plt>
  403587:	e8 34 d8 ff ff       	callq  400dc0 <random@plt>
  40358c:	89 45 fc             	mov    %eax,-0x4(%rbp)
  40358f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  403592:	89 c7                	mov    %eax,%edi
  403594:	e8 83 ff ff ff       	callq  40351c <check>
  403599:	85 c0                	test   %eax,%eax
  40359b:	74 ea                	je     403587 <gencookie+0x18>
  40359d:	8b 45 fc             	mov    -0x4(%rbp),%eax
  4035a0:	c9                   	leaveq 
  4035a1:	c3                   	retq   
  4035a2:	90                   	nop
  4035a3:	90                   	nop
  4035a4:	90                   	nop
  4035a5:	90                   	nop
  4035a6:	90                   	nop
  4035a7:	90                   	nop
  4035a8:	90                   	nop
  4035a9:	90                   	nop
  4035aa:	90                   	nop
  4035ab:	90                   	nop
  4035ac:	90                   	nop
  4035ad:	90                   	nop
  4035ae:	90                   	nop
  4035af:	90                   	nop

00000000004035b0 <__libc_csu_init>:
  4035b0:	48 89 6c 24 d8       	mov    %rbp,-0x28(%rsp)
  4035b5:	4c 89 64 24 e0       	mov    %r12,-0x20(%rsp)
  4035ba:	48 8d 2d 63 28 20 00 	lea    0x202863(%rip),%rbp        # 605e24 <__init_array_end>
  4035c1:	4c 8d 25 5c 28 20 00 	lea    0x20285c(%rip),%r12        # 605e24 <__init_array_end>
  4035c8:	4c 89 6c 24 e8       	mov    %r13,-0x18(%rsp)
  4035cd:	4c 89 74 24 f0       	mov    %r14,-0x10(%rsp)
  4035d2:	4c 89 7c 24 f8       	mov    %r15,-0x8(%rsp)
  4035d7:	48 89 5c 24 d0       	mov    %rbx,-0x30(%rsp)
  4035dc:	48 83 ec 38          	sub    $0x38,%rsp
  4035e0:	4c 29 e5             	sub    %r12,%rbp
  4035e3:	41 89 fd             	mov    %edi,%r13d
  4035e6:	49 89 f6             	mov    %rsi,%r14
  4035e9:	48 c1 fd 03          	sar    $0x3,%rbp
  4035ed:	49 89 d7             	mov    %rdx,%r15
  4035f0:	e8 4b d6 ff ff       	callq  400c40 <_init>
  4035f5:	48 85 ed             	test   %rbp,%rbp
  4035f8:	74 1c                	je     403616 <__libc_csu_init+0x66>
  4035fa:	31 db                	xor    %ebx,%ebx
  4035fc:	0f 1f 40 00          	nopl   0x0(%rax)
  403600:	4c 89 fa             	mov    %r15,%rdx
  403603:	4c 89 f6             	mov    %r14,%rsi
  403606:	44 89 ef             	mov    %r13d,%edi
  403609:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40360d:	48 83 c3 01          	add    $0x1,%rbx
  403611:	48 39 eb             	cmp    %rbp,%rbx
  403614:	75 ea                	jne    403600 <__libc_csu_init+0x50>
  403616:	48 8b 5c 24 08       	mov    0x8(%rsp),%rbx
  40361b:	48 8b 6c 24 10       	mov    0x10(%rsp),%rbp
  403620:	4c 8b 64 24 18       	mov    0x18(%rsp),%r12
  403625:	4c 8b 6c 24 20       	mov    0x20(%rsp),%r13
  40362a:	4c 8b 74 24 28       	mov    0x28(%rsp),%r14
  40362f:	4c 8b 7c 24 30       	mov    0x30(%rsp),%r15
  403634:	48 83 c4 38          	add    $0x38,%rsp
  403638:	c3                   	retq   
  403639:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000403640 <__libc_csu_fini>:
  403640:	f3 c3                	repz retq 
  403642:	90                   	nop
  403643:	90                   	nop
  403644:	90                   	nop
  403645:	90                   	nop
  403646:	90                   	nop
  403647:	90                   	nop
  403648:	90                   	nop
  403649:	90                   	nop
  40364a:	90                   	nop
  40364b:	90                   	nop
  40364c:	90                   	nop
  40364d:	90                   	nop
  40364e:	90                   	nop
  40364f:	90                   	nop

0000000000403650 <__do_global_ctors_aux>:
  403650:	55                   	push   %rbp
  403651:	48 89 e5             	mov    %rsp,%rbp
  403654:	53                   	push   %rbx
  403655:	48 83 ec 08          	sub    $0x8,%rsp
  403659:	48 8b 05 c8 27 20 00 	mov    0x2027c8(%rip),%rax        # 605e28 <__CTOR_LIST__>
  403660:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  403664:	74 19                	je     40367f <__do_global_ctors_aux+0x2f>
  403666:	bb 28 5e 60 00       	mov    $0x605e28,%ebx
  40366b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)
  403670:	48 83 eb 08          	sub    $0x8,%rbx
  403674:	ff d0                	callq  *%rax
  403676:	48 8b 03             	mov    (%rbx),%rax
  403679:	48 83 f8 ff          	cmp    $0xffffffffffffffff,%rax
  40367d:	75 f1                	jne    403670 <__do_global_ctors_aux+0x20>
  40367f:	48 83 c4 08          	add    $0x8,%rsp
  403683:	5b                   	pop    %rbx
  403684:	5d                   	pop    %rbp
  403685:	c3                   	retq   
  403686:	90                   	nop
  403687:	90                   	nop

Disassembly of section .fini:

0000000000403688 <_fini>:
  403688:	48 83 ec 08          	sub    $0x8,%rsp
  40368c:	e8 5f d8 ff ff       	callq  400ef0 <__do_global_dtors_aux>
  403691:	48 83 c4 08          	add    $0x8,%rsp
  403695:	c3                   	retq   
