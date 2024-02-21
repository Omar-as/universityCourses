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
