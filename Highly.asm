.386
.model flat, stdcall
option casemap :none  ; 大小写不敏感




.data

DEF Struct

pStartAddress 					dd	?
pKernel32 						dd	?
pVirtualProtect 				dd 	?
pVirtualAlloc 					dd 	?
pNewDraft 						dd 	?
pNTdll 							dd 	?
pCreateFileA					dd	?
pNtCreateFileA					dd	?
pStorage						dd	?
nAlldef							dd  ?
nStringnumber					dd	?
nMyCount						dd	?
pOriginalDEFPath				dd	?
pMyInformation					dd	?
DEF ends

NEW Struct
hMainProgramHandle				dd	?
nMainProgramPid					dd	?
pKernel32						dd	?
pKernelBase						dd	?
pNTDLL							dd	?
pNtQueryInformationThread		dd	?
pCreateToolhelp32Snapshot		dd	?
pThread32First					dd	?
pThread32Next					dd	?
pVirtualAlloc					dd	?
pOpenProcess					dd	?
pOpenThread						dd	?
pNtQueryVirtualMemory			dd	?
pGetModuleInformation			dd	?
pDraft							dd	?
dw000							dd	?
pDSOUND							dd	?
pDSOUNDBase						dd	?
dwDSOUNDSize					dd	?
pDINPUT							dd	?
pDINPUTBase						dd	?
dwDINPUTSize					dd	?
pMSVCRT							dd	?
pMSVCRTBase						dd	?
dwMSVCRTSize					dd	?
pquartz							dd	?
pquartzBase						dd	?
dwquartzSize					dd	?
hToolHelp32snapshot				dd	?
pNtSuspenThread					dd	?
hThreadTemporaryRestore			dd	?
dw00							dd	?
pNtTerminateProcess				dd 	?
pRtlCompareMemory				dd 	?
dwMainPathStringLen				dd 	?
pMainPathString					dd 	?
hProcessTemporaryRestore		dd	?
dw0								dd	?
dwNtQueryInformationThreadSystemID	dd	?
dwNtQueryVirtualMemorySystemID	dd	?
dw0000							dd	?
dwNtRtlCompareMemorySystemID	dd	?
dw00000							dd	?
NEW ends


Restore Struct
pMyDEFAddressOffset				dd	?
pMyDEFInformationOffset			dd	?
pEspJudegeCode					dd	?
pStartAddress 					dd	?
pKernel32 						dd	?
pVirtualProtect 				dd 	?
pVirtualAlloc 					dd 	?
pNewDraft 						dd 	?
pNTdll 							dd 	?
pPEBStruct						dd	?
pGetContextThread				dd	?
pSetContextThread				dd	?
pProgramOriginalAddress			dd	?
pNtQueryVirtualMemory			dd	?
pOpenThread						dd	?
pMainThreadTEB					dd	?
dwMainThreadId					dd	?
pMainThreadCilentIDStruct		dd	?
hMainThreadHandle				dd	?
pMainThreadStackBase			dd	?
pSuspendThread					dd	?
pResumeThread					dd	?
pErrorSelector					dd	?		
pVirtualFree					dd	?
pMainThreadEip					dd	?
pThread32Struct					dd	?
dwTemporaryControl				dd	?
ngap							dd	?
Restore ends

Draft Struct
pModuleInfo						db 0Ch dup(?)
pEntryAddress					db 0Ch dup(?)
pThread32Struct					db 1Ch dup(?)
pContextThread					db 2CCh dup(?)
pANSI							db 2CCh dup(?)
pProcessThread32Struct			db 1Ch dup(?)
pProcessNTPath					db 200h dup(?)
pProcessNTANSI					db 100h dup(?)
pProcessOtherNTPath				db 200h dup(?)
Draft ends

GetMainThreadPEBStrcut Struct
pDraft							dd	?
pVirtualAlloc					dd	?
pNtQueryVirtualMemory			dd	?
GetMainThreadPEBStrcut ends

GetMainThreadEIPStruct Struct
pOriginalEBP					dd	?
pThread32Struct 				dd	?
GetMainThreadEIPStruct ends

RestoreOAStruct Struct
pOriginalEBP					dd	?
pThread32Struct 				dd	?
pNtQueryVirtualMemory			dd	?
pNewAddress						dd	?
RestoreOAStruct ends



ProgramImageReloadStruct struct
pVirtualAlloc 					dd	?
pDraftPointer 					dd	?
pKernel32 						dd	?
pVirtualFree 					dd	?
pVirtualProtect 				dd	?
pMainStorage 					dd	?
pCreateFileA 					dd	?
pReadFile 						dd	?
hFile 							dd	?
ProgramImageReloadStruct ends
ProgramImageReloadStructSize equ sizeof(ProgramImageReloadStruct)


WindowsTitleUpdateStruct Struct
pUser32							dd	?
pSetWindowTextA					dd	?
pLoadImageA						dd	?
pSendMessage					dd	?
pWINMM							dd	?
pPlaySound						dd	?
WindowsTitleUpdateStruct ends



HeavenGateHookStruct Struct

pKernel32						dd	?
pKernelBase						dd	?
pNTDLL							dd	?
pVirtualAlloc 					dd 	?
pGetCurrentThread				dd	?
pOpenProcess					dd	?
pNtDelayExecution				dd	?
dwNtDelayExecution				dd	?
dw000000						dd	?
pDuplicateHandle				dd	?
pGetModuleInformation			dd	?
pNtQueryInformationThread		dd	?
pNtQueryVirtualMemory			dd	?
pDSOUND							dd	?
pDSOUNDBase						dd	?
dwDSOUNDSize					dd	?
pDINPUT							dd	?
pDINPUTBase						dd	?
dwDINPUTSize					dd	?
pMSVCRT							dd	?
pMSVCRTBase						dd	?
dwMSVCRTSize					dd	?
pquartz							dd	?
pquartzBase						dd	?
dwquartzSize					dd	?
pDraft							dd	?
hMainProgramHandle				dd	?
dwSyscallId						dd	?
;4A825Ch

HeavenGateHookStruct ends


MutipleThreadModifySourceCode Struct
pKernel32						dd	?
pNTDLL							dd	?
pAdvapi32						dd	?
pOpenProcess					dd	?
pCreateProcessA					dd	?
pGetContextThread				dd	?
pSetContextThread				dd	?
pNtCreateThreadEx				dd	?
pNtResumeThread					dd	?
pConvertStringSecurityDescriptorToSecurityDescriptorA	dd	?	
pSetKernelObjectSecurity		dd	?
pVirtualAlloc					dd	?
pDraft							dd	?
pVirtualFree					dd	?
hMainProgramHandle				dd	?
hThreadHandle					dd	?
pSD								dd	?
pDraft2							dd	?
MutipleThreadModifySourceCode ends

MutipleThreadModifySourceCodeDraft Struct
pSDDLDraft						db 100h dup(?)
pContextThread					db 2CCh dup(?)
MutipleThreadModifySourceCodeDraft ends

NtThreadControlStructFirst	Struct
pKernel32						dd	?
pVirtualProtect					dd	?
pCD0address						dd	?
dwMyNumber						dd	?
pMyCns							dd	?
pMyRedirect						dd	?
pWhereMyCns						dd	?
dwStatenoGap					dd	?
dwManyStateno					dd	?
dwMyTeam						dd	?
NtThreadControlStructFirst	ends



;=====================
pGetModuleHandleA 				equ 49f0b8h
pGetProcAddress 				equ 49f130h
pExitProcess 					equ 49f0f0h
pCloseHandle 					equ 49f124h
pSleep							equ 49f128h
pWaitForSingleObject			equ 49F120H

assume fs:nothing
.code 
start:
pushad
call ThreadKiller
call EipRegression
call WindowsTitleUpdate
;call MutipleThreadModifySourceCodeRoutine
;call HeavenHook
push 2000
call dword ptr ds:[pSleep]
sub esp,100h
mov ebp,esp
mov edi,esp
xor eax,eax
xor ecx,ecx
add ecx,100h
rep stosb
add ebp,30h
mov eax,ds:[4b5b4ch]
mov eax,[eax+0CD8h]
test eax,eax
je defmodify
call ProgramImageReload
push 49f604h
call dword ptr ds:[pGetModuleHandleA]
mov [ebp+DEF.pKernel32],eax
push 'coll' ;VirtualAlloc
push 'Alau'
push 'triV'
push esp
push eax
call dword ptr ds:[pGetProcAddress]
mov [ebp+DEF.pVirtualAlloc],eax
push 'tc';VirtualProtect
push 'etor'
push 'Plau'
push 'triV'
push esp
push dword ptr [ebp+DEF.pKernel32]
call dword ptr ds:[pGetProcAddress]
add esp,10h
mov dword ptr [ebp+DEF.pVirtualProtect],eax
add esp,0Ch
mov edi,ds:[4b5b4ch]
add edi,0cd4h
mov ecx,[edi]
mov [ebp+DEF.nAlldef],ecx
mov eax,0e30h
imul ecx
mov [ebp+DEF.nStringnumber],eax
mov eax,0E30h
add ecx,2h
imul ecx
push 40h
push 1000h
push eax
push 0
call dword ptr ds:[ebp+DEF.pVirtualAlloc]
mov esi,eax
mov [ebp+DEF.pNewDraft],esi
sub edi,4h
mov esi,[edi]
mov [ebp+DEF.pOriginalDEFPath],esi
mov edi,eax
mov ecx,[ebp+DEF.nStringnumber]
rep movsb
mov eax,0e30h
mov ebx,[ebp+DEF.nAlldef]
xor ecx,ecx
add ecx,ebx
mov esi,[ebp+DEF.pNewDraft]
loop1:
mov eax,0E30h
imul ecx
lea dword ptr edx,[esi+eax]
mov edi,edx
cmp dword ptr [edi+20CH],'LaeR';ReaLize.def
jne makezero
cmp dword ptr [edx+210h],'.ezi'
jne makezero
cmp dword ptr [edx+214h],'fed'
je checkecx
makezero:
mov dword ptr [edi],1h
add edi,4h
mov dword ptr [edi],0h
add edi,4h
mov dword ptr [edi],0h
checkecx:
sub ecx,1h
jns loop1
xor ecx,ecx
loop2:
mov eax,0E30h
imul ecx
lea edx,[esi+eax+20ch]
inc ecx
cmp dword ptr [edx],'LaeR';ReaLize.def
jne loop2
cmp dword ptr [edx+4h],'.ezi'
jne loop2
cmp dword ptr [edx+8h],'fed'
jne loop2
dec ecx
mov dword ptr [ebp+DEF.nMyCount],ecx
mov ebx, dword ptr [ebp+DEF.pOriginalDEFPath]
mov eax,0e30h
imul ecx
mov dword ptr eax,ds:[4b5b4ch]
add eax,0cd0h
mov edi,[eax]
mov ds:[4b4670h],edi
mov dword ptr [eax],esi
mov dword ptr edx,[ebp+DEF.nAlldef]
mov edi,edx
inc edx
mov dword ptr [eax+4h],edx
mov eax,0e30h
imul ecx
mov dword ptr [esi+eax+4h],1h
mov dword ptr [esi+eax],1h
mov esi,ebx
mov edi,ecx
push 4b4050h
push 40h
push 30h
push 43AD60h
call dword ptr [ebp+DEF.pVirtualProtect]
call GetCurrentAddress
mov ecx,eax
add ecx,0C3h
add eax,0BAh
sub eax,43AD6ch
mov dword ptr [ecx],ebx
mov dword ptr ds:[43AD67h],0E8h
mov dword ptr ds:[43AD68h],eax
mov byte ptr ds:[43AD6ch],90h

jmp next2
over:
add esp,100h
popad
popfd
popad
xor eax,eax
inc eax
sub esp,8
mov dword ptr [esp],46BDFFh
retn

defmodify:
mov dword ptr eax,ds:[4b5b4ch]
mov dword ptr ecx,[eax+0CD4h]
mov dword ptr edi,[eax+0cd0h]
dec ecx
loop3:
mov eax,0E30H
imul ecx
lea dword ptr edx,[eax+edi+020CH]
cmp dword ptr [edx],'LaeR';ReaLize.def
jne attack
cmp dword ptr [edx+4h],'.ezi'
jne attack
cmp dword ptr [edx+8h],'fed'
je next
attack:
mov dword ptr [edx],'d.__';__.def
mov dword ptr [edx+4h],'fe'
add edx,200h
mov dword ptr [edx],'rahc';'chars/ReaLize/'
mov dword ptr [edx+4h],'eR/s'
mov dword ptr [edx+8h],'ziLa'
mov dword ptr [edx+0Ch],'/e'
next:
dec ecx
jns loop3
jmp over

GetCurrentAddress proc
mov dword ptr eax,[esp]
ret
GetCurrentAddress endp

SourceModify1 proc
push ebx
push edx
push ecx
cmp eax,0h
jne end11
mov eax,0h
add eax,ebx
add eax,8h
lea dword ptr ecx,[ebx+edx+8h]
mov eax,[eax]
mov [ecx],eax
end11:
pop ecx
mov dword ptr ds:[eax+2A8h],ecx
pop edx
pop ebx
ret


SourceModify1 endp

next2:

push 4b4050h
push 40h
push 30h
push 43F0A7h
call dword ptr [ebp+DEF.pVirtualProtect]
call GetCurrentAddress
mov ecx,eax
mov dword ptr edx,[ebp+DEF.nMyCount]
mov dword ptr ebx,[ebp+DEF.nAlldef]
add ecx,027h
add eax,021h
sub eax,43F0ADh
mov dword ptr [ecx],edx
mov dword ptr ds:[43F0A9h],eax
add ecx,0Ch
mov dword ptr [ecx],ebx
jmp next3


SourceModify2 proc
pushad
mov eax,[esp+24h]
mov ebx,0
cmp eax,ebx
je @over2
mov dword ptr [esp+24h],0
@over2:
popad
push 43A960H
ret


SourceModify2 endp

next3:

push 4b4050h
push 40h
push 30h
push 44AFD9h
call dword ptr [ebp+DEF.pVirtualProtect]
call GetCurrentAddress
mov ecx,eax
mov dword ptr edx,[ebp+DEF.nMyCount]
mov dword ptr ebx,[ebp+DEF.nAlldef]
add ecx,027h
add eax,021h
sub eax,44AFDFh
mov dword ptr [ecx],edx
mov dword ptr ds:[44AFDBh],eax
add ecx,0Ch
mov dword ptr [ecx],ebx
jmp next4

SourceModify3 proc
pushad
mov eax,[esp+24h]
mov ebx,0
cmp eax,ebx
je @over3
mov dword ptr [esp+24h],0
@over3:
popad
push 43A960H
ret


SourceModify3 endp

next4:
mov dword ptr edi,[ebp+DEF.pNewDraft]
mov dword ptr ebx,[ebp+DEF.nAlldef]
mov eax,0e30h
imul ebx
lea eax,[edi+eax]
add eax,020Ch
mov dword ptr [eax],'d.__';__.def
mov dword ptr [eax+4h],'fe'
add eax,200h
mov dword ptr [eax],'rahc';chars/ReaLize/
mov dword ptr [eax+4h],'eR/s'
mov dword ptr [eax+8h],'ziLa'
mov dword ptr [eax+0Ch],'/e'
push 4b4050h
push 40h
push 30h
push 43AE96h
call dword ptr [ebp+DEF.pVirtualProtect]
mov dword ptr ds:[43AE97h],8901C283h
push 4b4050h
push 40h
push 1000h
push 43F070h
call dword ptr [ebp+DEF.pVirtualProtect]
mov eax,43F085h
mov dword ptr [eax],5004C483h
mov dword ptr [eax+4h],4A9C5468h
mov dword ptr [eax+8h],6D606800h
mov dword ptr [eax+0Ch],0BFE8004Bh
mov dword ptr [eax+10h],68000531h
mov dword ptr [eax+14h],4B6D60h
mov dword ptr [eax+18h],0FD972EE8h
mov dword ptr [eax+1Ch],14C483FFh
mov word ptr [eax+20h],0F8Bh


;Ntdll
mov esi,4B7000h
mov dword ptr [esi],'ldtN'
mov dword ptr [esi+4h],'l'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov edi,eax
;'RtlAllocateHeap'


;'RtlAnsiStringToUnicodeString '
mov dword ptr [esi],'AltR'
mov dword ptr [esi+4h],'Sisn'
mov dword ptr [esi+8h],'nirt'
mov dword ptr [esi+0Ch],'UoTg'
mov dword ptr [esi+10h],'ocin'
mov dword ptr [esi+14h],'tSed'
mov dword ptr [esi+18h],'gnir'
mov dword ptr [esi+1Ch],0
push esi
push edi
call dword ptr ds:[pGetProcAddress]
xor ecx,ecx
add eax,78Ah
LoopCheckRtl:
cmp ecx,200h
jae LoopCheckRtl2
add eax,1
add ecx,1
cmp byte ptr [eax],0EBh
jne LoopCheckRtl
LoopCheckRtl2:

;mov dword ptr eax,ds:[49F0F4h]
mov edi,eax
push 4b4050h
push 40h
push 1000h
push eax
call dword ptr [ebp+DEF.pVirtualProtect]
mov dword ptr [edi],8B55FF8Bh

mov dword ptr ds:[4B5960h],429CB0h
mov dword ptr ds:[4B6178h],10066010H
mov dword ptr ds:[4B48E8h],496651H
mov dword ptr ds:[4B48F0h],496361H
mov dword ptr ds:[4B48ECH],4962FBH
mov dword ptr ds:[4B48F4H],4962A1H
mov dword ptr ds:[4B48F8H],496349H
mov dword ptr ds:[4B48FCH],496651H
mov dword ptr ds:[4B4900H],49F684H
mov dword ptr ds:[4B4904H],49F674H
mov dword ptr ds:[4B5FACH],429E80H
mov dword ptr ds:[4B5FC0H],0H
mov dword ptr ds:[4B5FF8H],0H
mov dword ptr ds:[4A91B4H],7473H
mov dword ptr ds:[4A9254H],69257473H
mov dword ptr ds:[4ABC80H],70736964H
mov dword ptr ds:[4ABC84H],7479616CH
mov dword ptr ds:[4ABC88H],696C636FH
mov dword ptr ds:[4ABC8CH],616F6270H
mov dword ptr ds:[4ABC90H],6472H
mov dword ptr ds:[4B2188H],49221EH
mov dword ptr ds:[4B218CH],49221EH
mov dword ptr ds:[4B27E0H],49321FH

jmp defmodify



ThreadKiller proc
pushad
sub esp,200h
mov ebp,esp
mov edi,ebp
xor eax,eax
xor ecx,ecx
add ecx,200h
rep stosb
call GetProcAllControl
mov dword ptr eax,fs:[20h]
mov dword ptr [ebp+NEW.nMainProgramPid],eax
push eax
push 0
push 10FFFh
call dword ptr [ebp+NEW.pOpenProcess]
mov dword ptr [ebp+NEW.hMainProgramHandle],eax
call GetSomeModules
call RelativeProcessCheckAndTerminate
call ThreadLoopCheckAndSuspend
push dword ptr [ebp+NEW.hMainProgramHandle]
call dword ptr ds:[pCloseHandle]
add esp,200h
popad
ret
ThreadKiller endp



GetProcAllControl proc
pushad
push 49F604h
call dword ptr ds:[pGetModuleHandleA]
mov [ebp+NEW.pKernel32],eax
mov esi,4B7000h
mov dword ptr [esi],'triV';->VirtualAlloc
mov dword ptr [esi+4h],'Alau'
mov dword ptr [esi+8h],'coll'
mov byte ptr [esi+0Ch],0
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pVirtualAlloc],eax
mov dword ptr [esi],'aerC';->CreateToolhelp32Snapshot
mov dword ptr [esi+4h],'oTet'
mov dword ptr [esi+8h],'ehlo'
mov dword ptr [esi+0Ch],'23pl'
mov dword ptr [esi+10h],'panS'
mov dword ptr [esi+14h],'tohs'
mov byte ptr [esi+18h],0
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pCreateToolhelp32Snapshot],eax
mov dword ptr [esi],'erhT';->Thread32First
mov dword ptr [esi+4h],'23da'
mov dword ptr [esi+8h],'sriF'
mov word ptr [esi+0Ch],'t'
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pThread32First],eax
mov dword ptr [esi],'erhT';->Thread32Next
mov dword ptr [esi+4h],'23da'
mov dword ptr [esi+8h],'txeN'
mov byte ptr [esi+0Ch],0
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pThread32Next],eax
mov dword ptr [esi],'nepO';->OpenProcess
mov dword ptr [esi+4h],'corP'
mov dword ptr [esi+8h],'sse'
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pOpenProcess],eax
mov dword ptr [esi],'nepO';->OpenThread
mov dword ptr [esi+4h],'erhT'
mov dword ptr [esi+8h],'da'
push esi
push dword ptr [ebp+NEW.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pOpenThread],eax
mov dword ptr [esi],'LDTN';NTDLL
mov word ptr [esi+4h],'L'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+NEW.pNTDLL],eax
mov dword ptr [esi],'uQtN';->NtQueryInformationThread
mov dword ptr [esi+4h],'Iyre'
mov dword ptr [esi+8h],'rofn'
mov dword ptr [esi+0Ch],'itam'
mov dword ptr [esi+10h],'hTno'
mov dword ptr [esi+14h],'daer'
mov byte ptr [esi+18h],0
push esi
push dword ptr [ebp+NEW.pNTDLL]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pNtQueryInformationThread],eax
mov dword ptr eax,[eax+1h]
mov dword ptr [ebp+NEW.dwNtQueryInformationThreadSystemID],eax
mov dword ptr [esi],'uStN';->NtSuspendThread
mov dword ptr [esi+4h],'neps'
mov dword ptr [esi+8h],'rhTd'
mov dword ptr [esi+0Ch],'dae'
push esi
push dword ptr [ebp+NEW.pNTDLL]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pNtSuspenThread],eax
mov dword ptr [esi],'eTtN';->NtTerminateProcess
mov dword ptr [esi+4h],'nimr'
mov dword ptr [esi+8h],'Peta'
mov dword ptr [esi+0Ch],'ecor'
mov dword ptr [esi+10H],'ss'
push esi
push dword ptr [ebp+NEW.pNTDLL]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pNtTerminateProcess],eax
mov dword ptr [esi],'uQtN';->NtQueryVirtualMemory
mov dword ptr [esi+4h],'Vyre'
mov dword ptr [esi+8h],'utri'
mov dword ptr [esi+0Ch],'eMla'
mov dword ptr [esi+10h],'yrom'
mov byte ptr [esi+14h],0
push esi
push dword ptr [ebp+NEW.pNTDLL]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pNtQueryVirtualMemory],eax
mov dword ptr eax,[eax+1h]
mov dword ptr [ebp+NEW.dwNtQueryVirtualMemorySystemID],eax
mov dword ptr [esi],'CltR';->RtlCompareMemory
mov dword ptr [esi+4h],'apmo'
mov dword ptr [esi+8h],'eMer'
mov dword ptr [esi+0Ch],'yrom'
mov byte ptr [esi+10h],0
push esi
push dword ptr [ebp+NEW.pNTDLL]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pRtlCompareMemory],eax
mov dword ptr eax,[eax+1h]
mov dword ptr [ebp+NEW.dwNtRtlCompareMemorySystemID],eax
mov dword ptr [esi],'nreK';KernelBase
mov dword ptr [esi+4h],'aBle'
mov dword ptr [esi+8h],'es'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+NEW.pKernelBase],eax
mov dword ptr [esi],'MteG';GetModuleInformation
mov dword ptr [esi+4h],'ludo'
mov dword ptr [esi+8h],'fnIe'
mov dword ptr [esi+0Ch],'amro'
mov dword ptr [esi+10h],'noit'
mov byte ptr [esi+14h],0
push esi
push dword ptr [ebp+NEW.pKernelBase]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+NEW.pGetModuleInformation],eax

push 40h
push 1000h
push 2000h
push 0
call dword ptr [ebp+NEW.pVirtualAlloc]
mov [ebp+NEW.pDraft],eax
popad
ret
GetProcAllControl endp





GetSomeModules proc
pushad
mov esi,4B7000h
mov dword ptr [esi],'CVSM';->MSVCRT
mov dword ptr [esi+4h],'TR'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+NEW.pMSVCRT],eax
mov dword ptr edi,[ebp+NEW.pDraft]
push 0Ch
push edi
push eax
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pGetModuleInformation]
mov dword ptr eax,[edi]
mov dword ptr [ebp+NEW.pMSVCRTBase],eax
mov dword ptr eax,[edi+4h]
mov dword ptr [ebp+NEW.dwMSVCRTSize],eax
mov dword ptr [esi],'UOSD';->DSOUND.dll
mov dword ptr [esi+4h],'d.DN'
mov dword ptr [esi+8h],'ll'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+NEW.pDSOUND],eax
push 0Ch
push edi
push eax
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pGetModuleInformation]
mov dword ptr eax,[edi]
mov dword ptr [ebp+NEW.pDSOUNDBase],eax
mov dword ptr eax,[edi+4h]
mov dword ptr [ebp+NEW.dwDSOUNDSize],eax
mov dword ptr [esi],'PNID';->DINPUT.dll
mov dword ptr [esi+4h],'d.TU'
mov dword ptr [esi+8h],'ll'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+NEW.pDINPUT],eax
push 0Ch
push edi
push eax
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pGetModuleInformation]
mov dword ptr eax,[edi]
mov dword ptr [ebp+NEW.pDINPUTBase],eax
mov dword ptr eax,[edi+4h]
mov dword ptr [ebp+NEW.dwDINPUTSize],eax
mov dword ptr [esi],'rauq';->quartz
mov dword ptr [esi+4h],'zt'
push esi
call dword ptr ds:[pGetModuleHandleA]
test eax,eax
je GetModuleInformationEnd
mov dword ptr [ebp+NEW.pquartz],eax
push 0Ch
push edi
push eax
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pGetModuleInformation]
mov dword ptr eax,[edi]
mov dword ptr [ebp+NEW.pquartzBase],eax
mov dword ptr eax,[edi+4h]
mov dword ptr [ebp+NEW.dwquartzSize],eax
GetModuleInformationEnd:
popad
ret
GetSomeModules endp

RelativeProcessCheckAndTerminate proc
pushad
;mov eax,fs:[30h]
;add eax,3024h
;mov edi,[eax]

mov dword ptr ebx,[ebp+NEW.pDraft]
lea dword ptr esi,[ebx+Draft.pProcessNTPath]
push 0h
push 400h
push esi
push 2h
push 400000h
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pNtQueryVirtualMemory]
xor ecx,ecx
mov dword ptr edx,[esi+4h]
mov dword ptr [ebp+NEW.pMainPathString],edx
mov byte ptr cl,[esi]

add edx,ecx
_ProcessSearchMainNTPath:
dec ecx
cmp byte ptr [edx],'\'
je _ProcessLoopCheckStarctPrepare
dec edx
jmp _ProcessSearchMainNTPath
_ProcessLoopCheckStarctPrepare:
mov dword ptr [ebp+NEW.dwMainPathStringLen],ecx

push 0h
push 4h
call dword ptr [ebp+NEW.pCreateToolhelp32Snapshot]
mov dword ptr [ebp+NEW.hToolHelp32snapshot],eax
mov dword ptr edi,[ebp+NEW.pDraft]
lea dword ptr esi,[edi+Draft.pProcessThread32Struct]
mov dword ptr [edi+Draft.pProcessThread32Struct],1Ch
push esi
push dword ptr [ebp+NEW.hToolHelp32snapshot]
call dword ptr [ebp+NEW.pThread32First]
mov dword ptr ebx,fs:[20h]
cmp dword ptr [edi+Draft.pProcessThread32Struct+0Ch],ebx
jne _ProcessNTPathCheckAndTerminate
_ProcessLoopNextThread:
mov dword ptr edi,[ebp+NEW.pDraft]
lea dword ptr esi,[edi+Draft.pProcessThread32Struct]
mov dword ptr [edi+Draft.pProcessThread32Struct],1Ch
push esi
push dword ptr [ebp+NEW.hToolHelp32snapshot]
call dword ptr [ebp+NEW.pThread32Next]
test eax,eax
je _TerminateProcessEnd
mov dword ptr ebx,fs:[20h]
cmp dword ptr [edi+Draft.pProcessThread32Struct+0Ch],ebx
jne _ProcessNTPathCheckAndTerminate
jmp _ProcessLoopNextThread

_ProcessNTPathCheckAndTerminate:
push dword ptr [edi+Draft.pProcessThread32Struct+0Ch]
push 0h
push 10FFFh
call dword ptr [ebp+NEW.pOpenProcess]
test eax,eax
je _ProcessLoopNextThread
mov dword ptr [ebp+NEW.hProcessTemporaryRestore],eax

push dword ptr [edi+Draft.pProcessThread32Struct+08h]
push 0h
push 10FFFh
call dword ptr [ebp+NEW.pOpenThread]
test eax,eax
je _ProcessCloseHandleProcess
push ss
push 0h
push eax

; call $+5h
; pop eax
; add eax,26h
; mov ecx,eax
; mov byte ptr [ecx],0EAh
; mov word ptr [ecx+5h],33h

call GetFunctionStart
add eax,0Ah
push 33h
push eax
call fword ptr [esp]
; mov dword ptr [ecx+1h],eax
;call GetFunctionStart2
;sub eax,7h
;mov ecx,eax
;mov byte ptr [ecx],0EAh
;mov word ptr [ecx+5h],23h
;call $+5h
;pop eax
;add eax,0Eh
;mov dword ptr [ecx+1h],eax
; push 23h
; call $+5
; pop eax
; add eax,0Ch
; push eax
; db 00,00,00,00,00,00,00
; add esp,4h

mov dword ptr ebx,[ebp+NEW.pDraft]
lea dword ptr edi,[ebx+Draft.pProcessNTPath]
add edi,8h
add esi,10h
push dword ptr [ebp+NEW.dwMainPathStringLen]
push esi
push edi
call dword ptr [ebp+NEW.pRtlCompareMemory]
cmp dword ptr eax,[ebp+NEW.dwMainPathStringLen]
je _ProcessTerminate

_ProcessCloseHandleThread:
push dword ptr [ebp+NEW.hThreadTemporaryRestore]
call dword ptr ds:[pCloseHandle]
_ProcessCloseHandleProcess:
push dword ptr [ebp+NEW.hProcessTemporaryRestore]
call dword ptr ds:[pCloseHandle]
jmp _ProcessLoopNextThread

_ProcessTerminate:
push 0h
push dword ptr [ebp+NEW.hProcessTemporaryRestore]
call dword ptr [ebp+NEW.pNtTerminateProcess]
jmp _ProcessLoopNextThread

_TerminateProcessEnd:
popad
ret
RelativeProcessCheckAndTerminate endp

GetFunctionStart proc
call $+5
pop eax
sub eax,5h
ret

GetFunctionStart endp

x64TerminateProcessEnquery proc
db 48h ,08Bh ,044h  ,24h,10h  
db 48h ,089h ,045h ,78h  
db 48h ,08Bh ,04Dh ,38h
db 48h ,08Dh ,071h ,0Ch 
db 83h ,0ECh ,038h      
db 48h ,08Bh ,04Dh ,78h
db 48h ,0BAh ,009h ,00,00,00,00,00,00,00
db 4Ch ,08Bh ,0C6h 
db 49h ,0B9h ,008h ,00,00 ,00 ,00 ,00 ,00 ,00 
db 48h ,0C7h ,044h ,24h ,20h ,00 ,00 ,00 ,00
db 48h ,083h ,0ECh ,08h   
db 4Ch ,08Bh ,0D1h 
db 48h ,08Bh ,085h ,98h ,00 ,00 ,00   
db 0Fh ,005h        
db 48h ,083h ,0C4h ,40h          
db 48h ,08Bh ,045h ,38h          
db 8Dh ,040h ,00Ch             
db 48h ,08Bh ,000h             
db 48h ,08Bh ,05Dh ,38h          
db 8Dh ,0B3h ,0E8h ,08h ,00 ,00       
db 48h ,083h ,0ECh ,48h          
db 48h ,08Bh ,08Dh ,90h ,00 ,00 ,00    
db 48h ,08Bh ,0D0h            
db 49h ,0B8h ,002h ,00 ,00 ,00 ,00 ,00 ,00 ,00
db 4Ch ,08Bh ,0CEh             
db 48h ,0C7h ,044h ,24h ,20h ,00 ,04 ,00 ,00
db 48h ,0C7h ,044h ,24h ,28h ,00 ,00 ,00 ,00
db 48h ,083h ,0ECh ,08h          
db 4Ch ,08Bh ,0D1h             
db 48h ,08Bh ,085h ,9Ch ,00 ,00 ,00    
db 0Fh ,005h               
db 48h ,083h ,0C4h ,50h  
mov dword ptr ebx,[esp+18h]
mov ss,bx        
retf 14h                   

x64TerminateProcessEnquery endp

GetFunctionStart2 proc
call $+5
pop eax
sub eax,5h
ret
GetFunctionStart2 endp

JudgePluginsThread proc
pushad
mov dword ptr ebx,[ebp+NEW.pDraft]
lea dword ptr esi,[ebx+Draft.pContextThread]
push 0h
push 400h
push esi
push 2h
push eax
push [ebp+NEW.hMainProgramHandle]
call dword ptr [ebp+NEW.pNtQueryVirtualMemory]
xor ecx,ecx
mov dword ptr edx,[esi+4h]
mov byte ptr cl,[esi]
mov dword ptr ebx,[ebp+NEW.pDraft]
lea dword ptr edi,[ebx+Draft.pANSI]
xor ebx,ebx

LoopANSI:
mov al,[edx]
inc edx
dec ecx
test ecx,ecx
je loopANSIEnd
test al,al
je LoopANSI
inc ebx
mov byte ptr [edi],al
inc edi
jmp LoopANSI
loopANSIEnd:
mov eax,edi
mov dword ptr [eax],0
mov dword ptr [eax+10h],'gulp';plugins
mov dword ptr [eax+14h],'sni'
LoopANSIDeceax:
cmp byte ptr [eax],'\'
je Judgeplugins
dec eax
jmp LoopANSIDeceax

Judgeplugins:
sub eax,7h
mov ecx,7h
xchg eax,edi
mov esi,eax
add esi,10h
repe cmpsb
jz JudgeSuccessKeepThread

JudgeFailureSuspendThread:
popad
mov eax,1h
ret


JudgeSuccessKeepThread:
popad
xor eax,eax
ret
JudgePluginsThread endp


ThreadLoopCheckAndSuspend proc
pushad
push 0h
push 4h
call dword ptr [ebp+NEW.pCreateToolhelp32Snapshot]
mov dword ptr [ebp+NEW.hToolHelp32snapshot],eax
mov dword ptr edi,[ebp+NEW.pDraft]
lea dword ptr esi,[edi+Draft.pThread32Struct]
mov dword ptr [edi+Draft.pThread32Struct],1Ch
push esi
push dword ptr [ebp+NEW.hToolHelp32snapshot]
call dword ptr [ebp+NEW.pThread32First]
mov dword ptr ebx,fs:[20h]
cmp dword ptr [edi+Draft.pThread32Struct+0Ch],ebx
je _CheckLoop
_NextThread:
mov dword ptr edi,[ebp+NEW.pDraft]
lea dword ptr esi,[edi+Draft.pThread32Struct]
mov dword ptr [edi+Draft.pThread32Struct],1Ch
push esi
push dword ptr [ebp+NEW.hToolHelp32snapshot]
call dword ptr [ebp+NEW.pThread32Next]
test eax,eax
je _CloseHandleControl
_CheckLoop:
mov dword ptr ebx,fs:[20h]
cmp dword ptr [edi+Draft.pThread32Struct+0Ch],ebx
jne _NextThread
push dword ptr [edi+Draft.pThread32Struct+08h]
push 0h
push 10FFFh
call dword ptr [ebp+NEW.pOpenThread]
_NormalCheck:
mov dword ptr [ebp+NEW.hThreadTemporaryRestore],eax
mov dword ptr ebx,[ebp+NEW.pDraft]
lea dword ptr esi,[ebx+Draft.pEntryAddress]
push 0h
push 4h
push esi
push 9h
push dword ptr [ebp+NEW.hThreadTemporaryRestore]
call dword ptr [ebp+NEW.pNtQueryInformationThread]
mov dword ptr eax,[esi]
cmp dword ptr eax,494A80h
je _CloseThreadHandle
cmp dword ptr eax,4949AEh
je _CloseThreadHandle
push eax
cmp dword ptr [eax],6AEC8B55h
jne Subend
cmp dword ptr [eax+4h],0F58868FFh
jne Subend
cmp word ptr [eax+8h],0049h
jne Subend
pop eax
jmp _CloseThreadHandle
Subend:
pop eax
je _CloseThreadHandle
mov dword ptr ecx,[ebp+NEW.pquartzBase]
test ecx,ecx
je _DSOUNDCmp
cmp eax,ecx
jb _DSOUNDCmp
add dword ptr ecx,[ebp+NEW.dwquartzSize]
cmp eax,ecx
ja _DSOUNDCmp
cmp dword ptr [eax],8B55FF8Bh
jne _DSOUNDCmp
cmp byte ptr [eax+4h],0ECh
je _CloseThreadHandle
_DSOUNDCmp:
mov dword ptr ecx,[ebp+NEW.pDSOUNDBase]
cmp eax,ecx
jb _DinputCmp
add dword ptr ecx,[ebp+NEW.dwDSOUNDSize]
cmp eax,ecx
ja _DinputCmp
cmp dword ptr [eax],8B55FF8Bh
jne _SuspendThread
cmp dword ptr [eax+4h],575653ECh
je _CloseThreadHandle
cmp byte ptr [eax+4h],0ECh
je _CloseThreadHandle
_DinputCmp:
mov dword ptr ecx,[ebp+NEW.pDINPUTBase]
cmp eax,ecx
jb _MSVCRTCmp
add dword ptr ecx,[ebp+NEW.dwDINPUTSize]
cmp eax,ecx
ja _MSVCRTCmp
cmp dword ptr [eax],8B55FF8Bh
jne _SuspendThread
cmp dword ptr [eax+4h],1CEC83ECh
je _CloseThreadHandle
_MSVCRTCmp:
mov dword ptr ecx,[ebp+NEW.pMSVCRTBase]
cmp eax,ecx
jb _pluginsCmp
add dword ptr ecx,[ebp+NEW.dwMSVCRTSize]
cmp eax,ecx
ja _pluginsCmp
cmp dword ptr [eax],8B55FF8Bh
jne _pluginsCmp
cmp word ptr [eax+4h],0E8ECh
je _CloseThreadHandle

cmp dword ptr [eax],8B18EC83h
jne _pluginsCmp
cmp dword ptr [eax+4h],0FF1C2444h
jne _pluginsCmp
cmp dword ptr [eax+8h],10FF0470h
je _CloseHandleControl
_pluginsCmp:
call JudgePluginsThread
test eax,eax
je _CloseThreadHandle




_SuspendThread:
push 4B4500h
push [ebp+NEW.hThreadTemporaryRestore]
call dword ptr [ebp+NEW.pNtSuspenThread]
_CloseThreadHandle:
push [ebp+NEW.hThreadTemporaryRestore]
call dword ptr ds:[pCloseHandle]
jmp _NextThread
_CloseHandleControl:
push [ebp+NEW.hToolHelp32snapshot]
call dword ptr ds:[pCloseHandle]
popad
ret
ThreadLoopCheckAndSuspend endp


ProgramImageReload proc
pushad
sub esp,150h
mov ebp,esp
push 49f604h
call dword ptr ds:[pGetModuleHandleA]
mov [ebp+ProgramImageReloadStruct.pKernel32],eax
mov esi,4b7000h
mov dword ptr [esi],'triV';->VirtualAlloc
mov dword ptr [esi+4h],'Alau'
mov dword ptr [esi+8h],'coll'
mov byte ptr [esi+0Ch],0
push esi
push [ebp+ProgramImageReloadStruct.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+ProgramImageReloadStruct.pVirtualAlloc],eax
push 40h
push 1000h
push 1000h
push 0
call [ebp+ProgramImageReloadStruct.pVirtualAlloc]
mov [ebp+ProgramImageReloadStruct.pDraftPointer],eax
mov esi,eax
mov dword ptr [esi],'triV';VirtualFree 
mov dword ptr [esi+4h],'Flau'
mov dword ptr [esi+8h],'eer'
push esi
push [ebp+ProgramImageReloadStruct.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+ProgramImageReloadStruct.pVirtualFree],eax
mov dword ptr [esi],'triV';->VirtualProtect
mov dword ptr [esi+4h],'Plau'
mov dword ptr [esi+8h],'etor'
mov dword ptr [esi+0Ch],'tc'
push esi
push [ebp+ProgramImageReloadStruct.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+ProgramImageReloadStruct.pVirtualProtect],eax
mov dword ptr [esi],'aerC';->CreateFileA
mov dword ptr [esi+4h],'iFet'
mov dword ptr [esi+8h],'Ael'
push esi
push [ebp+ProgramImageReloadStruct.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+ProgramImageReloadStruct.pCreateFileA],eax
mov dword ptr [esi],'daeR';->ReadFile
mov dword ptr [esi+4h],'eliF'
mov byte ptr [esi+8h],0
push esi
push [ebp+ProgramImageReloadStruct.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+ProgramImageReloadStruct.pReadFile],eax
mov dword ptr [esi],'rahc';chars/ReaLize/Root
mov dword ptr [esi+4h],'eR/s'
mov dword ptr [esi+8h],'ziLa'
mov dword ptr [esi+0Ch],'oR/e'
mov dword ptr [esi+10h],'to'
mov edi,[ebp+ProgramImageReloadStruct.pDraftPointer]
push 0
push 80h
push 3
push 0
push 0
push 1
push esi
call [ebp+ProgramImageReloadStruct.pCreateFileA]
mov [ebp+ProgramImageReloadStruct.hFile],eax
push 40h
push 1000h
push 9E000h
push 0
call dword ptr [ebp+ProgramImageReloadStruct.pVirtualAlloc]
mov [ebp+ProgramImageReloadStruct.pMainStorage],eax
mov edi,eax
mov eax,[ebp+ProgramImageReloadStruct.hFile]
push eax
push 0
push 4b5964h
push 9E000h
push edi
push eax
call dword ptr [ebp+ProgramImageReloadStruct.pReadFile]
call dword ptr ds:[pCloseHandle]
push 4b4050h
push 40h
push 9E000h
push 401000h
call dword ptr [ebp+ProgramImageReloadStruct.pVirtualProtect]
xor ecx,ecx
@loopProgram:
mov ebx,[edi+ecx*4]
mov [401000h+ecx*4],ebx
inc ecx
cmp ecx,27800h
jb @loopProgram
push 8000h
push 0
push dword ptr [ebp+ProgramImageReloadStruct.pDraftPointer]
call dword ptr [ebp+ProgramImageReloadStruct.pVirtualFree]

push 8000h
push 0
push dword ptr [ebp+ProgramImageReloadStruct.pMainStorage]
call dword ptr [ebp+ProgramImageReloadStruct.pVirtualFree]

add esp,150h
popad
ret

ProgramImageReload endp


EipRegression proc
pushad
sub esp,200h
mov ebp,esp
mov edi,ebp
xor eax,eax
xor ecx,ecx
add ecx,200h
rep stosb
mov dword ptr eax,[esp+60Ch]
mov dword ptr [ebp+Restore.pMyDEFInformationOffset],eax
mov dword ptr eax,[esp+61Ch]
mov dword ptr [ebp+Restore.pMyDEFAddressOffset],eax

mov dword ptr eax,[esp+354h]
mov dword ptr [ebp+Restore.pEspJudegeCode],eax

mov eax,fs:[30h]
mov dword ptr [ebp+Restore.pPEBStruct],eax
mov dword ptr edx,[eax+8h]
mov dword ptr [ebp+Restore.pProgramOriginalAddress],edx
push 49f604h
call dword ptr ds:[pGetModuleHandleA]
mov [ebp+Restore.pKernel32],eax
mov esi,4b7000h
mov dword ptr [esi],'triV';->VirtualAlloc
mov dword ptr [esi+4h],'Alau'
mov dword ptr [esi+8h],'coll'
mov byte ptr [esi+0Ch],0
push esi
push eax
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+Restore.pVirtualAlloc],eax
push 40h
push 1000h
push 1000h
push 0
call eax
mov [ebp+Restore.pNewDraft],eax
mov esi,eax
mov dword ptr [esi],'triV';->VirtualProtect
mov dword ptr [esi+4h],'Plau'
mov dword ptr [esi+8h],'etor'
mov dword ptr [esi+0Ch],'tc'
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+Restore.pVirtualProtect],eax
mov dword ptr [esi],'TteG'
mov dword ptr [esi+4h],'aerh'
mov dword ptr [esi+8h],'noCd'
mov dword ptr [esi+0Ch],'txet'
mov byte ptr [esi+10h],0h
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress];->GetProcAddress
mov [ebp+Restore.pGetContextThread],eax
mov dword ptr [esi],'TteS'
mov dword ptr [esi+4h],'aerh'
mov dword ptr [esi+8h],'noCd'
mov dword ptr [esi+0Ch],'txet'
mov byte ptr [esi+10h],0h
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress];->GetProcAddress
mov dword ptr [ebp+Restore.pSetContextThread],eax
mov dword ptr [esi],'nepO';OpenThread
mov dword ptr [esi+4h],'erhT'
mov dword ptr [esi+8h],'da'
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress];->GetProcAddress
mov dword ptr [ebp+Restore.pOpenThread],eax
mov dword ptr [esi],'psuS';SuspendThread
mov dword ptr [esi+4h],'Tdne'
mov dword ptr [esi+8h],'aerh'
mov word ptr [esi+0Ch],'d'
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress];->GetProcAddress
mov dword ptr [ebp+Restore.pSuspendThread],eax
mov dword ptr [esi],'useR';ResumeThread
mov dword ptr [esi+4h],'hTem'
mov dword ptr [esi+8h],'daer'
mov word ptr [esi+0Ch],0
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress];->GetProcAddress
mov dword ptr [ebp+Restore.pResumeThread],eax
mov dword ptr [esi],'triV';VirtualFree 
mov dword ptr [esi+4h],'Flau'
mov dword ptr [esi+8h],'eer'
push esi
push [ebp+Restore.pKernel32]
call dword ptr ds:[pGetProcAddress]
mov [ebp+Restore.pVirtualFree],eax
mov dword ptr [esi],'LDTN';NTDLL
mov dword ptr [esi+4h],'L'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+Restore.pNTdll],eax
mov dword ptr [esi],'uQtN';NtQueryVirtualMemory
mov dword ptr [esi+4h],'Vyre'
mov dword ptr [esi+8h],'utri'
mov dword ptr [esi+0Ch],'eMla'
mov dword ptr [esi+10h],'yrom'
mov word ptr [esi+14h],0h
push esi
push [ebp+Restore.pNTdll]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+Restore.pNtQueryVirtualMemory],eax
call GetMainThreadPEB
call GetMainThreadHandle
call GetMainThreadEip
call RestoreOA
call WakeUpThread
add esp,200h
popad
ret
EipRegression endp

GetMainThreadPEB proc
pushad
sub esp,50h
mov esi,ebp
mov ebp,esp
mov dword ptr eax,[esi+Restore.pNtQueryVirtualMemory]
mov dword ptr [ebp+GetMainThreadPEBStrcut.pNtQueryVirtualMemory],eax
mov edi,200000h
_GetLoopQuery:
push 0h
push 20h
push 4b4235h
push 0h
push edi
push -1
call dword ptr [ebp+GetMainThreadPEBStrcut.pNtQueryVirtualMemory]
cmp dword ptr ds:[4b4245h],1000h
jne _GetAdd1000
cmp dword ptr [edi+18h],edi
jne _GetAdd1000
mov dword ptr eax,[edi+4h]
mov dword ptr ebx,fs:[30h]
cmp dword ptr [eax-8h],ebx
jne _GetAdd1000
mov dword ptr [esi+Restore.pMainThreadTEB],edi
lea dword ptr ecx,[edi+20h]
mov dword ptr [esi+Restore.pMainThreadCilentIDStruct],ecx
mov dword ptr [esi+Restore.pMainThreadStackBase],eax
jmp _GetEnd
_GetAdd1000:
add edi,1000h
cmp edi,400000h
jb _GetLoopQuery
_GetEnd:
add esp,50h
popad
ret
GetMainThreadPEB endp


GetMainThreadHandle proc
pushad
mov dword ptr edi,[ebp+Restore.pMainThreadCilentIDStruct]
mov dword ptr eax,[edi+4h]
mov dword ptr [ebp+Restore.dwMainThreadId],eax
push eax
push 0h
push 10FFFh
call dword ptr [ebp+Restore.pOpenThread]
mov dword ptr [ebp+Restore.hMainThreadHandle],eax
popad
ret
GetMainThreadHandle endp

GetMainThreadEip proc
pushad
sub esp,50h
mov dword ptr [esp],ebp
mov ebp,esp
mov esi,[ebp]
;SuspendThread
mov dword ptr eax,[esi+Restore.hMainThreadHandle]
push eax
call dword ptr [esi+Restore.pSuspendThread]
push 40h
push 1000h
push 1000h
push 0
call dword ptr [esi+Restore.pVirtualAlloc]
mov dword ptr [ebp+GetMainThreadEIPStruct.pThread32Struct],eax
mov dword ptr [esi+Restore.pThread32Struct],eax
mov edi,eax
mov dword ptr [edi],001003Fh
push edi
push dword ptr [esi+Restore.hMainThreadHandle]
call dword ptr [esi+Restore.pGetContextThread]
mov dword ptr eax,[edi+0B8h]
mov dword ptr [esi+Restore.pMainThreadEip],eax
mov dword ptr eax,[edi+28h]
mov dword ptr [esi+Restore.pErrorSelector],eax

add esp,50h
popad
ret
GetMainThreadEip endp


RestoreOA proc
pushad
sub esp,50h
xchg esi,ebp
mov ebp,esp
mov dword ptr [ebp+RestoreOAStruct.pOriginalEBP],esi
mov dword ptr eax,[esi+Restore.pNtQueryVirtualMemory]
mov dword ptr [ebp+RestoreOAStruct.pNtQueryVirtualMemory],eax
mov dword ptr eax,[esi+Restore.pProgramOriginalAddress]
mov dword ptr edi,[esi+Restore.pEspJudegeCode]
add eax,1000h
add eax,9E000h
cmp edi,eax
ja _RestoreStart
jmp _ROAend
_RestoreStart:

push 0h
push 20h
push 4b4235h
push 0h
push edi
push -1
call dword ptr [ebp+RestoreOAStruct.pNtQueryVirtualMemory]
xor ecx,ecx
cmp dword ptr ds:[4b4245h],1000h
jne _ROAend0
mov dword ptr eax,ds:[4b4239h]
_ROAloopCheck:
cmp dword ptr [eax],57565553h
jne _ROAadd4
cmp dword ptr [eax+4h],016A7C6Ah
jne _ROAadd4
cmp dword ptr [eax+8h],0171B3E8h
jne _ROAadd4
cmp dword ptr [eax+0Ch],83F08B00h
jne _ROAadd4
mov dword ptr [ebp+RestoreOAStruct.pNewAddress],eax
mov dword ptr edx,[esi+Restore.pMainThreadEip]
mov ecx,401000h
sub ecx,eax
mov dword ptr [esi+Restore.ngap],ecx
cmp edx,eax
jb _ROATranscend
push eax
mov dword ptr ds:[4b4339h],eax
add eax,9E000h
mov dword ptr ds:[4b4335h],eax
cmp edx,eax
pop eax
ja _ROATranscend 
add dword ptr [ebx+0B8h],ecx
push dword ptr [esi+Restore.pThread32Struct]
push dword ptr [esi+Restore.hMainThreadHandle]
call dword ptr [esi+Restore.pSetContextThread]
_ROATranscend:
;修复堆栈
mov dword ptr ebx,[esi+Restore.pThread32Struct]
mov dword ptr ecx,[ebx+0C4h]
mov dword ptr edx,[esi+Restore.pMainThreadStackBase]
_ROAStack0:
mov ebx,[esi+Restore.ngap]
cmp ecx,edx
jae _ROAStack1
mov dword ptr eax,[ecx]
add ecx,4h
cmp eax,ds:[4b4339h]
jb _ROAStack0
cmp eax,ds:[4b4335h]
jae _ROAStack0
add dword ptr [ecx-4h],ebx
;db 0fh,0AEh,079h,0fch
jmp _ROAStack0
_ROAStack1:
mov dword ptr eax,[ebp+RestoreOAStruct.pNewAddress]
add eax,0D882h
mov eax,[eax]
mov esi,[eax]
mov edi,ds:[4b5b4ch]
sub edi,esi
mov edx,fs:[4h]
mov ecx,esp
add ecx,2B8h
_ROAStack2:
cmp ecx,edx
jae _ROAend2
mov dword ptr eax,[ecx]
add ecx,4h
cmp eax,ds:[4b4339h]
jb _ROAStack2Branch1
cmp eax,ds:[4b4335h]
jae _ROAStack2Branch1
add dword ptr [ecx-4h],ebx
jmp _ROAStack2
_ROAStack2Branch1:
sub eax,esi
cmp eax,0D40H
je _ROAStack2Branch2
cmp eax,0D44h
je _ROAStack2Branch2
cmp eax,0D58h
jne _ROAStack2
_ROAStack2Branch2:
add dword ptr [ecx-4h],edi
jmp _ROAStack2
_ROAend2:
mov dword ptr esi,[ebp+RestoreOAStruct.pOriginalEBP]
mov dword ptr [esi+Restore.dwTemporaryControl],1h
jmp _ROAend
_ROAadd4:
add ecx,4h
add eax,4h
cmp dword ptr ecx,ds:[4b4241h]
jbe _ROAloopCheck

_ROAend0:
mov dword ptr esi,[ebp+RestoreOAStruct.pOriginalEBP]
mov dword ptr [esi+Restore.dwTemporaryControl],0h
_ROAend:
mov dword ptr ebx,[esi+Restore.pMyDEFAddressOffset]
mov dword ptr eax,ds:[4b5b4ch]
mov eax,[eax+0CD0h]
add eax,ebx
mov dword ptr [eax],1h
add eax,8h
mov dword ptr ebx,[esi+Restore.pMyDEFInformationOffset]
mov dword ptr [eax],ebx
add esp,50h
popad
ret

RestoreOA endp


WakeUpThread proc
pushad
mov eax,[ebp+Restore.hMainThreadHandle]
mov ebx,[ebp+Restore.pResumeThread]
push eax
call ebx
popad
ret
WakeUpThread endp

WindowsTitleUpdate proc
pushad
sub esp,20h
mov ebp,esp
mov esi,4B7000h
mov dword ptr [esi],'RESU';USER32
mov dword ptr [esi+4h],'23'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pUser32],eax
mov dword ptr [esi],'WteS';SetWindowTextA	
mov dword ptr [esi+4h],'odni'
mov dword ptr [esi+8h],'xeTw'
mov dword ptr [esi+0Ch],'At'
push esi
push [ebp+WindowsTitleUpdateStruct.pUser32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pSetWindowTextA],eax
mov dword ptr [esi],'daoL';LoadImageA	
mov dword ptr [esi+4h],'gamI'
mov dword ptr [esi+8h],'Ae'
push esi
push [ebp+WindowsTitleUpdateStruct.pUser32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pLoadImageA],eax
mov dword ptr [esi],'dneS';SendMessageA	
mov dword ptr [esi+4h],'sseM'
mov dword ptr [esi+8h],'Aega'
mov dword ptr [esi+0Ch],0
push esi
push [ebp+WindowsTitleUpdateStruct.pUser32]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pSendMessage],eax
mov dword ptr [esi],'MNIW';WINMM
mov dword ptr [esi+4h],'M'
push esi
call dword ptr ds:[pGetModuleHandleA]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pWINMM],eax
mov dword ptr [esi],'yalP';PlaySound
mov dword ptr [esi+4h],'nuoS'
mov dword ptr [esi+8h],'d'
push esi
push dword ptr [ebp+WindowsTitleUpdateStruct.pWINMM]
call dword ptr ds:[pGetProcAddress]
mov dword ptr [ebp+WindowsTitleUpdateStruct.pPlaySound],eax

mov edi,4B7200h
mov dword ptr [edi],'rahc';chars/ReaLize/Sin.ico
mov dword ptr [edi+4h],'eR/s'
mov dword ptr [edi+8h],'ziLa'
mov dword ptr [edi+0Ch],'iS/e'
mov dword ptr [edi+10h],'ci.n'
mov dword ptr [edi+14h],'o'
push 10h
push 20h
push 20h
push 1
push edi
push 0
call dword ptr [ebp+WindowsTitleUpdateStruct.pLoadImageA]
push eax
push 0
push 80h
push dword ptr ds:[4A7D34h]
call dword ptr [ebp+WindowsTitleUpdateStruct.pSendMessage]
mov dword ptr [edi],'niS';Sin
push edi
push dword ptr ds:[4A7D34h]
call dword ptr [ebp+WindowsTitleUpdateStruct.pSetWindowTextA]
; mov dword ptr [edi],'rahc';chars/ReaLize/tokerunayo.wav
; mov dword ptr [edi+4h],'eR/s'
; mov dword ptr [edi+8h],'ziLa'
; mov dword ptr [edi+0Ch],'ot/e'
; mov dword ptr [edi+10h],'urek'
; mov dword ptr [edi+14h],'oyan'
; mov dword ptr [edi+18h],'vaw.'
; mov word ptr [edi+1Ch],0
; push 20001h
; push 0
; push edi
; call dword ptr [ebp+WindowsTitleUpdateStruct.pPlaySound]
add esp,20h
popad
ret
WindowsTitleUpdate endp



;HeavenHook proc
;pushad
;push 49f604h
;call dword ptr ds:[pGetModuleHandleA]
;push 'tc';VirtualProtect
;push 'etor'
;push 'Plau'
;push 'triV'
;push esp
;push eax
;call dword ptr ds:[pGetProcAddress]
;add esp,10h
;xchg eax,esi
;mov eax,fs:[0C0h]
;mov edi,eax
;push 4b4050h
;push 40h
;push 100h
;push edi
;call esi
;call GetFunctionEnd3
;sub eax,06h
;mov dword ptr ebx,[edi+1h]
;mov dword ptr [eax],ebx
;; push 'L';NTDLL
;; push 'LDTN'
;; push esp
;; call dword ptr ds:[pGetModuleHandleA]
;; add esp,8h
;; push 's';NtQu eryI nfor mati onPr oces s
;; push 'seco'
;; push 'rPno'
;; push 'itam'
;; push 'rofn'
;; push 'Iyre'
;; push 'uQtN'
;; push esp
;; push eax
;; call dword ptr ds:[pGetProcAddress]
;; add esp,1Ch
;; mov dword ptr ebx,[eax+1]
;call GetFunctionStart3
;; mov dword ptr [eax+1],ebx 
;add eax,0Ah
;sub eax,edi
;sub eax,5
;mov byte ptr [edi],0E8h
;mov dword ptr [edi+1h],eax
;
;popad
;ret
;HeavenHook endp
;
;
;
;
;GetFunctionStart3 proc
;call $+5
;pop eax
;sub eax,5h
;ret
;GetFunctionStart3 endp
;
;
;HeavensGate proc
;cmp dword ptr eax,11111111H
;je HeavensGateEnd2
;cmp dword ptr ds:[4B4F5Ch],0
;jne HeavensGateEnd2
;mov dword ptr ds:[4B4F5Ch],66666666h
;pushad
;cmp dword ptr ds:[4B4F44h],4b4000h
;ja HeavensGateJudge
;call HeavensGateGetRoutine
;mov dword ptr ds:[4B4F44h],edi
;call HeavenGateModuleInformationRetake
;
;HeavensGateJudge:
;mov dword ptr edi,ds:[4B4F44h]
;
;call dword ptr [edi+HeavenGateHookStruct.pGetCurrentThread]
;push 0h
;push 4h
;push 4B4F64h
;push 9h
;push eax
;call dword ptr [edi+HeavenGateHookStruct.pNtQueryInformationThread]
;
;mov dword ptr eax,ds:[4B4F64h]
;cmp dword ptr eax,494A80h
;je HeavensGateEnd
;cmp dword ptr eax,4949AEh
;je HeavensGateEnd
;push eax
;cmp dword ptr [eax],6AEC8B55h
;jne HeavenSubend
;cmp dword ptr [eax+4h],0F58868FFh
;jne HeavenSubend
;cmp word ptr [eax+8h],0049h
;jne HeavenSubend
;pop eax
;jmp HeavensGateEnd
;HeavenSubend:
;pop eax
;je HeavensGateEnd
;mov dword ptr ecx,[edi+HeavenGateHookStruct.pquartzBase]
;test ecx,ecx
;je _HeavenGate_DSOUNDCmp
;cmp eax,ecx
;jb _HeavenGate_DSOUNDCmp
;add dword ptr ecx,[edi+HeavenGateHookStruct.dwquartzSize]
;cmp eax,ecx
;ja _HeavenGate_DSOUNDCmp
;cmp dword ptr [eax],8B55FF8Bh
;jne _HeavenGate_DSOUNDCmp
;cmp byte ptr [eax+4h],0ECh
;je HeavensGateEnd
;_HeavenGate_DSOUNDCmp:
;mov dword ptr ecx,[edi+HeavenGateHookStruct.pDSOUNDBase]
;cmp eax,ecx
;jb _HeavenGate_DinputCmp
;add dword ptr ecx,[edi+HeavenGateHookStruct.dwDSOUNDSize]
;cmp eax,ecx
;ja _HeavenGate_DinputCmp
;cmp dword ptr [eax],8B55FF8Bh
;jne HeavenGateSleep
;cmp dword ptr [eax+4h],575653ECh
;je HeavensGateEnd
;cmp byte ptr [eax+4h],0ECh
;je HeavensGateEnd
;_HeavenGate_DinputCmp:
;mov dword ptr ecx,[edi+HeavenGateHookStruct.pDINPUTBase]
;cmp eax,ecx
;jb _HeavenGate_MSVCRTCmp
;add dword ptr ecx,[edi+HeavenGateHookStruct.dwDINPUTSize]
;cmp eax,ecx
;ja _HeavenGate_MSVCRTCmp
;cmp dword ptr [eax],8B55FF8Bh
;jne HeavenGateSleep
;cmp dword ptr [eax+4h],1CEC83ECh
;je HeavensGateEnd
;_HeavenGate_MSVCRTCmp:
;mov dword ptr ecx,[edi+HeavenGateHookStruct.pMSVCRTBase]
;cmp eax,ecx
;jb _HeavenGate_pluginsCmp
;add dword ptr ecx,[edi+HeavenGateHookStruct.dwMSVCRTSize]
;cmp eax,ecx
;ja _HeavenGate_pluginsCmp
;cmp dword ptr [eax],8B55FF8Bh
;jne _HeavenGate_pluginsCmp
;cmp word ptr [eax+4h],0E8ECh
;je HeavensGateEnd
;
;cmp dword ptr [eax],8B18EC83h
;jne _HeavenGate_pluginsCmp
;cmp dword ptr [eax+4h],0FF1C2444h
;jne _HeavenGate_pluginsCmp
;cmp dword ptr [eax+8h],10FF0470h
;je HeavensGateEnd
;jmp HeavensGateEnd
;_HeavenGate_pluginsCmp:
;;call _HeavenGate_JudgePluginsThread
;;test eax,eax
;;je HeavensGateEnd
;
;
;HeavenGateSleep:
;mov dword ptr ds:[4B4F5Ch],0
;call GetFunctionStart4
;add eax,0Ah
;push ss
;push 33h
;push eax
;call fword ptr [esp] 
;HeavensGateEnd:
;popad
;mov dword ptr ds:[4B4F5Ch],0h
;HeavensGateEnd2:
;add esp,4h
;db 0EAh,00,00,00,00,33h,00
;
;HeavensGate endp
;
;GetFunctionEnd3 proc
;call $+5
;pop eax
;sub eax,5h
;ret
;GetFunctionEnd3 endp
;
;GetFunctionStart4 proc
;call $+5
;pop eax
;sub eax,5h
;ret
;GetFunctionStart4 endp
;
;
;
;
;HeavensGateX64SleepEX proc
;
;db 48h,083h,0ECh,08h        
;db 48h,0B8h,00,00,00,00,00,00,00,80h
;db 48h,089h,04h,24h          
;db 48h,08Bh,047h,1ch          
;db 48h,08Bh,0D4h             
;db 48h,031h,0C9h             
;db 48h,083h,0ECh,28h          
;db 0Fh,05h                
;db 48h,083h,0C4h,30h          
;db 48h,08Bh,044h,24h,10h       
;
;retf 14h
;HeavensGateX64SleepEX endp
;
;
;
;HeavensGateGetRoutine proc
;push eax
;push ebx
;push ecx
;push edx
;push esi
;push ebp
;sub esp,20h
;mov ebp,esp
;push 49F604h
;call dword ptr ds:[pGetModuleHandleA]
;mov [ebp+HeavenGateHookStruct.pKernel32],eax
;mov esi,4B7100h
;mov dword ptr [esi],'triV';->VirtualAlloc
;mov dword ptr [esi+4h],'Alau'
;mov dword ptr [esi+8h],'coll'
;mov byte ptr [esi+0Ch],0
;push esi
;push dword ptr [ebp+HeavenGateHookStruct.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+HeavenGateHookStruct.pVirtualAlloc],eax
;push 40h
;push 1000h
;push 1000h
;push 0
;call dword ptr [ebp+HeavenGateHookStruct.pVirtualAlloc]
;mov edi,eax
;push 40h
;push 1000h
;push 1000h
;push 0
;call dword ptr [ebp+HeavenGateHookStruct.pVirtualAlloc]
;mov dword ptr [edi+HeavenGateHookStruct.pDraft],eax
;push 49f604h
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pKernel32],eax
;mov dword ptr [esi],'lpuD';->DuplicateHandle
;mov dword ptr [esi+4h],'taci'
;mov dword ptr [esi+8h],'naHe'
;mov dword ptr [esi+0Ch],'eld'
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pDuplicateHandle],eax
;mov dword ptr [esi],'nepO';->OpenProcess
;mov dword ptr [esi+4h],'corP'
;mov dword ptr [esi+8h],'sse'
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pOpenProcess],eax
;mov dword ptr [esi],'CteG';->GetCurrentThread
;mov dword ptr [esi+4h],'erru'
;mov dword ptr [esi+8h],'hTtn'
;mov dword ptr [esi+0Ch],'daer'
;mov byte ptr [esi+10h],0
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pGetCurrentThread],eax
;; mov dword ptr [esi],'eelS';->Sleep
;; mov dword ptr [esi+4h],'p'
;; push esi
;; push dword ptr [edi+HeavenGateHookStruct.pKernel32]
;; call dword ptr ds:[pGetProcAddress]
;; mov dword ptr [edi+HeavenGateHookStruct.pSleep],eax
;mov dword ptr [esi],'LDTN';NTDLL
;mov word ptr [esi+4h],'L'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pNTDLL],eax
;mov dword ptr [esi],'uQtN';->NtQueryInformationThread
;mov dword ptr [esi+4h],'Iyre'
;mov dword ptr [esi+8h],'rofn'
;mov dword ptr [esi+0Ch],'itam'
;mov dword ptr [esi+10h],'hTno'
;mov dword ptr [esi+14h],'daer'
;mov byte ptr [esi+18h],0
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pNTDLL]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pNtQueryInformationThread],eax
;
;mov dword ptr [esi],'eDtN';->NtDelayExecution 
;mov dword ptr [esi+4h],'Eyal'
;mov dword ptr [esi+8h],'ucex'
;mov dword ptr [esi+0Ch],'noit'
;mov byte ptr [esi+10h],0
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pNTDLL]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pNtDelayExecution],eax
;mov dword ptr eax,[eax+1h]
;mov dword ptr [edi+HeavenGateHookStruct.dwNtDelayExecution],eax
;mov dword ptr [esi],'nreK';KernelBase
;mov dword ptr [esi+4h],'aBle'
;mov dword ptr [esi+8h],'es'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pKernelBase],eax
;mov dword ptr [esi],'MteG';GetModuleInformation
;mov dword ptr [esi+4h],'ludo'
;mov dword ptr [esi+8h],'fnIe'
;mov dword ptr [esi+0Ch],'amro'
;mov dword ptr [esi+10h],'noit'
;mov byte ptr [esi+14h],0
;push esi
;push dword ptr [edi+HeavenGateHookStruct.pKernelBase]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [edi+HeavenGateHookStruct.pGetModuleInformation],eax
;mov dword ptr eax,fs:[20h]
;push eax
;push 0
;push 10FFFh
;call dword ptr [edi+HeavenGateHookStruct.pOpenProcess]
;mov dword ptr [edi+HeavenGateHookStruct.hMainProgramHandle],eax
;add esp,20h
;pop ebp
;pop esi
;pop edx
;pop ecx
;pop ebx
;pop eax
;
;ret
;HeavensGateGetRoutine endp
;
;HeavenGateModuleInformationRetake proc
;
;
;pushad
;sub esp,10h
;
;
;mov esi,4B7100h
;mov dword ptr [esi],'CVSM';->MSVCRT
;mov dword ptr [esi+4h],'TR'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pMSVCRT],eax
;mov dword ptr ebp,[edi+HeavenGateHookStruct.pDraft]
;push 0Ch
;push ebp
;push eax
;push [edi+HeavenGateHookStruct.hMainProgramHandle]
;call dword ptr [edi+HeavenGateHookStruct.pGetModuleInformation]
;mov dword ptr eax,[ebp]
;mov dword ptr [edi+HeavenGateHookStruct.pMSVCRTBase],eax
;mov dword ptr eax,[ebp+4h]
;mov dword ptr [edi+HeavenGateHookStruct.dwMSVCRTSize],eax
;mov dword ptr [esi],'UOSD';->DSOUND.dll
;mov dword ptr [esi+4h],'d.DN'
;mov dword ptr [esi+8h],'ll'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pDSOUND],eax
;push 0Ch
;push ebp
;push eax
;push [edi+HeavenGateHookStruct.hMainProgramHandle]
;call dword ptr [edi+HeavenGateHookStruct.pGetModuleInformation]
;mov dword ptr eax,[ebp]
;mov dword ptr [edi+HeavenGateHookStruct.pDSOUNDBase],eax
;mov dword ptr eax,[ebp+4h]
;mov dword ptr [edi+HeavenGateHookStruct.dwDSOUNDSize],eax
;mov dword ptr [esi],'PNID';->DINPUT.dll
;mov dword ptr [esi+4h],'d.TU'
;mov dword ptr [esi+8h],'ll'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [edi+HeavenGateHookStruct.pDINPUT],eax
;push 0Ch
;push ebp
;push eax
;push [edi+HeavenGateHookStruct.hMainProgramHandle]
;call dword ptr [edi+HeavenGateHookStruct.pGetModuleInformation]
;mov dword ptr eax,[ebp]
;mov dword ptr [edi+HeavenGateHookStruct.pDINPUTBase],eax
;mov dword ptr eax,[ebp+4h]
;mov dword ptr [edi+HeavenGateHookStruct.dwDINPUTSize],eax
;mov dword ptr [esi],'rauq';->quartz
;mov dword ptr [esi+4h],'zt'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;test eax,eax
;je HeavenGateModuleInformationRetakeEnd
;mov dword ptr [edi+HeavenGateHookStruct.pquartz],eax
;push 0Ch
;push ebp
;push eax
;push [edi+HeavenGateHookStruct.hMainProgramHandle]
;call dword ptr [edi+HeavenGateHookStruct.pGetModuleInformation]
;mov dword ptr eax,[ebp]
;mov dword ptr [edi+HeavenGateHookStruct.pquartzBase],eax
;mov dword ptr eax,[ebp+4h]
;mov dword ptr [edi+HeavenGateHookStruct.dwquartzSize],eax
;HeavenGateModuleInformationRetakeEnd:
;
;
;
;add esp,10h
;popad
;ret
;HeavenGateModuleInformationRetake endp
;
;
;_HeavenGate_JudgePluginsThread proc
;pushad
;mov dword ptr ebx,[edi+HeavenGateHookStruct.pDraft]
;lea dword ptr esi,[ebx+Draft.pContextThread]
;push 0h
;push 400h
;push esi
;push 2h
;push eax
;push [edi+HeavenGateHookStruct.hMainProgramHandle]
;call dword ptr [edi+HeavenGateHookStruct.pNtQueryVirtualMemory]
;xor ecx,ecx
;mov dword ptr edx,[esi+4h]
;mov byte ptr cl,[esi]
;mov dword ptr ebx,[edi+NEW.pDraft]
;lea dword ptr ebp,[ebx+Draft.pANSI]
;xor ebx,ebx
;
;_HeavenGate_LoopANSI:
;mov al,[edx]
;inc edx
;dec ecx
;test ecx,ecx
;je _HeavenGate_loopANSIEnd
;test al,al
;je _HeavenGate_LoopANSI
;inc ebx
;mov byte ptr [ebp],al
;inc ebp
;jmp _HeavenGate_LoopANSI
;_HeavenGate_loopANSIEnd:
;mov eax,ebp
;mov dword ptr [eax],0
;mov dword ptr [eax+10h],'gulp';plugins
;mov dword ptr [eax+14h],'sni'
;_HeavenGate_LoopANSIDeceax:
;cmp byte ptr [eax],'\'
;je _HeavenGate_Judgeplugins
;dec eax
;jmp _HeavenGate_LoopANSIDeceax
;
;_HeavenGate_Judgeplugins:
;sub eax,7h
;mov ecx,7h
;xchg eax,ebp
;mov esi,eax
;add esi,10h
;repe cmpsb
;jz _HeavenGate_JudgeSuccessKeepThread
;
;_HeavenGate_JudgeFailureSuspendThread:
;popad
;mov eax,1h
;ret
;
;
;_HeavenGate_JudgeSuccessKeepThread:
;popad
;xor eax,eax
;ret
;_HeavenGate_JudgePluginsThread endp
;
;
;
;
;
;MutipleThreadModifySourceCodeRoutine proc
;pushad
;sub esp,50h
;mov ebp,esp
;push 49F604h
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32],eax
;mov esi,4B7000h
;mov dword ptr [esi],'TteG';GetThreadContext
;mov dword ptr [esi+4h],'aerh'
;mov dword ptr [esi+8h],'noCd'
;mov dword ptr [esi+0Ch],'txet'
;mov byte ptr [esi+10h],0h
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pGetContextThread],eax
;mov dword ptr [esi],'TteS';SetContextThread
;mov dword ptr [esi+4h],'aerh'
;mov dword ptr [esi+8h],'noCd'
;mov dword ptr [esi+0Ch],'txet'
;mov byte ptr [esi+10h],0h
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pSetContextThread],eax
;mov dword ptr [esi],'nepO';->OpenProcess
;mov dword ptr [esi+4h],'corP'
;mov dword ptr [esi+8h],'sse'
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pOpenProcess],eax
;;VirtualAlloc VirtualFree
;mov dword ptr [esi],'triV';VirtualAlloc
;mov dword ptr [esi+4h],'Alau' 
;mov dword ptr [esi+8h],'coll'
;mov dword ptr [esi+0Ch],0
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualAlloc],eax
;mov dword ptr [esi],'triV';VirtualFree
;mov dword ptr [esi+4h],'Flau' 
;mov dword ptr [esi+8h],'eer'
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualFree],eax
;mov dword ptr [esi],'aerC';->CreateProcessA
;mov dword ptr [esi+4h],'rPet'
;mov dword ptr [esi+8h],'seco'
;mov dword ptr [esi+0Ch],'As'
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pCreateProcessA],eax
;mov dword ptr [esi],'LDTN';NTDLL
;mov dword ptr [esi+4h],'L'
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pNTDLL],eax
;mov dword ptr [esi],'rCtN';NtCreatThreadEx
;mov dword ptr [esi+4h],'etae'
;mov dword ptr [esi+8h],'erhT'
;mov dword ptr [esi+0Ch],'xEda'
;mov byte ptr [esi+10h],0
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pNTDLL]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pNtCreateThreadEx],eax
;mov dword ptr [esi],'eRtN';NtResumeThread
;mov dword ptr [esi+4h],'emus'
;mov dword ptr [esi+8h],'erhT'
;mov dword ptr [esi+0Ch],'da'
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pNTDLL]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pNtResumeThread],eax
;;Adva pi32
;mov dword ptr [esi],'avdA'
;mov dword ptr [esi+4h],'23ip'
;mov byte ptr [esi+8h],0h
;push esi
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pAdvapi32],eax
;;SetKernelObjectSecurity 
;mov dword ptr [esi],'KteS';SetKernelObjectSecurity
;mov dword ptr [esi+4h],'enre'
;mov dword ptr [esi+8h],'jbOl'
;mov dword ptr [esi+0Ch],'Stce'
;mov dword ptr [esi+10h],'ruce'
;mov dword ptr [esi+14h],'yti'
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pAdvapi32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pSetKernelObjectSecurity],eax
;
;mov dword ptr [esi],'vnoC';ConvertStringSecurityDescriptorToSecurityDescriptorA
;mov dword ptr [esi+4h],'Stre'
;mov dword ptr [esi+8h],'nirt'
;mov dword ptr [esi+0Ch],'ceSg'
;mov dword ptr [esi+10h],'tiru'
;mov dword ptr [esi+14h],'seDy'
;mov dword ptr [esi+18h],'pirc'
;mov dword ptr [esi+1Ch],'Trot'
;mov dword ptr [esi+20h],'ceSo'
;mov dword ptr [esi+24h],'tiru'
;mov dword ptr [esi+28h],'seDy'
;mov dword ptr [esi+2Ch],'pirc'
;mov dword ptr [esi+30h],'Arot'
;mov byte ptr [esi+34h],0
;push esi
;push dword ptr [ebp+MutipleThreadModifySourceCode.pAdvapi32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pConvertStringSecurityDescriptorToSecurityDescriptorA],eax
;
;mov eax,fs:[20h]
;push eax
;push 0
;push 10FFFh
;call dword ptr [ebp+MutipleThreadModifySourceCode.pOpenProcess]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.hMainProgramHandle],eax
;lea edx, dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;push 0H
;push 0H
;push 0H
;push 0h
;push 5h;4 或许是躲藏？ SuspendThread
;push 0h
;push 494A80h
;push dword ptr [ebp+MutipleThreadModifySourceCode.hMainProgramHandle]
;push 0h
;push 1FFFFFh
;push edx
;call dword ptr [ebp+MutipleThreadModifySourceCode.pNtCreateThreadEx]
;push 40h
;push 1000h
;push 1000h
;push 0
;call dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualAlloc]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pDraft],eax
;mov esi,eax
;lea dword ptr edi,[esi+MutipleThreadModifySourceCodeDraft]
;mov dword ptr [edi],001003Fh
;push edi														 ;pGetContextThread
;push dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pGetContextThread]
;call GetNtThreadStartFirst
;add eax,0Ah
;mov dword ptr [edi+0B8h],eax
;push edi
;push dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pSetContextThread]
;;   D:(D ;;GA ;;;W D)(D ;;GA ;;;B A)(D ;;GA ;;;S Y)
;mov dword ptr [esi],'D(:D'
;mov dword ptr [esi+4h],'AG;;'
;mov dword ptr [esi+8h],'W;;;'
;mov dword ptr [esi+0Ch],'D()D'
;mov dword ptr [esi+10H],'AG;;'
;mov dword ptr [esi+14h],'B;;;'
;mov dword ptr [esi+18h],'D()A'
;mov dword ptr [esi+1Ch],'AG;;'
;mov dword ptr [esi+20h],'S;;;'
;mov dword ptr [esi+24h],')Y'
;push 0
;lea eax,[ebp+MutipleThreadModifySourceCode.pSD]
;push eax
;push 1h
;push esi
;call dword ptr [ebp+MutipleThreadModifySourceCode.pConvertStringSecurityDescriptorToSecurityDescriptorA]
;mov eax,[ebp+MutipleThreadModifySourceCode.pSD]
;push eax
;push 4h
;push dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pSetKernelObjectSecurity]
;
;; mov eax,[ebp+MutipleThreadModifySourceCode.pSD]
;; push eax
;; push 4h
;; push dword ptr [ebp+MutipleThreadModifySourceCode.hMainProgramHandle]
;; call dword ptr [ebp+MutipleThreadModifySourceCode.pSetKernelObjectSecurity]
;
;push 40h
;push 1000h
;push 1000h
;push 0
;call dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualAlloc]
;mov dword ptr [ebp+MutipleThreadModifySourceCode.pDraft2],eax
;mov dword ptr esi,[ebp+MutipleThreadModifySourceCode.pDraft2]
;mov dword ptr [esi],'rahc';->char s/Re aLiz e/Bi nary /.AL aya
;mov dword ptr [esi+4h],'eR/s'
;mov dword ptr [esi+8h],'ziLa'
;mov dword ptr [esi+0Ch],'iB/e'
;mov dword ptr [esi+10h],'yran'
;mov dword ptr [esi+14h],'LA./'
;mov dword ptr [esi+18h],'aya'
;lea dword ptr edi,[esi+200h]
;lea dword ptr ecx,[esi+500h]
;lea dword ptr ebx,[esi+350h]
;lea dword ptr edx,[esi+750h]
;mov dword ptr [edx],18h
;mov dword ptr eax,[ebp+MutipleThreadModifySourceCode.pSD]
;mov dword ptr [edx+4h],eax
;mov dword ptr [ecx],40h
;mov dword ptr [ecx+2Ch],1h
;mov dword ptr [ecx+30H],0h
;mov dword ptr [ebx],' ehT';The World is over...
;mov dword ptr [ebx+4h],'lroW'
;mov dword ptr [ebx+8h],'si d'
;mov dword ptr [ebx+0Ch],'evo '
;mov dword ptr [ebx+10h],'...r'
;mov byte ptr [ebx+14h],0h
;mov dword ptr [ecx+0Ch],ebx
;push edi
;push ecx
;push 0h
;push 0h
;push 10h
;push 0h
;push 0h
;push edx
;push esi
;push 0h
;call dword ptr [ebp+MutipleThreadModifySourceCode.pCreateProcessA]
;
;mov dword ptr eax,[edi]
;push 1000
;push eax
;call dword ptr ds:[pWaitForSingleObject]
;push 0
;push dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pNtResumeThread]
;push 8000h
;push 0
;push dword ptr [ebp+MutipleThreadModifySourceCode.pDraft]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualFree]
;push 8000h
;push 0
;push dword ptr [ebp+MutipleThreadModifySourceCode.pDraft2]
;call dword ptr [ebp+MutipleThreadModifySourceCode.pVirtualFree]
;push dword ptr [ebp+MutipleThreadModifySourceCode.hMainProgramHandle]
;call dword ptr ds:[pCloseHandle]
;push dword ptr [ebp+MutipleThreadModifySourceCode.hThreadHandle]
;call dword ptr ds:[pCloseHandle]
;
;add esp,50h
;popad
;ret
;MutipleThreadModifySourceCodeRoutine endp
;
;
;
;GetNtThreadStartFirst proc
;call $+5
;pop eax
;sub eax,5h
;ret
;GetNtThreadStartFirst endp
;
;
;NtThreadControlFirst proc
;pushad
;sub esp,200h
;mov ebp,esp
;
;call ThreadGetFunctions
;
;call SomeDataGet
;
;NtThreadCodeLoop:
;call GuranteeMyCnsNumber
;call ProtectMyBasicData
;call ModifySource
;
;jmp NtThreadCodeLoop
;NtThreadControlFirst endp
;
;
;ThreadGetFunctions proc
;pushad
;push 49f604h
;call dword ptr ds:[pGetModuleHandleA]
;mov dword ptr [ebp+NtThreadControlStructFirst.pKernel32],eax
;mov esi,4b72A0h
;mov dword ptr [esi],'triV';->VirtualProtect
;mov dword ptr [esi+4h],'Plau'
;mov dword ptr [esi+8h],'etor'
;mov dword ptr [esi+0Ch],'tc'
;push esi
;push [ebp+NtThreadControlStructFirst.pKernel32]
;call dword ptr ds:[pGetProcAddress]
;mov dword ptr [ebp+NtThreadControlStructFirst.pVirtualProtect],eax
;popad
;ret
;
;ThreadGetFunctions endp
;
;SomeDataGet proc
;pushad
;mov esi,ds:[4b5b4ch]
;mov dword ptr ebx,[esi+0CD0h]
;mov dword ptr edi,[esi+0CD4h]
;dec edi
;xor ecx,ecx
;cmp dword ptr [ebp+NtThreadControlStructFirst.pCD0address],ebx
;je DataCD0Equal
;mov dword ptr [ebp+NtThreadControlStructFirst.pCD0address],ebx
;jmp DataCD0Equal
;DataCD0Equal2:
;inc ecx
;DataCD0Equal:
;cmp dword ptr ecx,edi
;ja DataCD0End
;mov eax,0E30H
;imul ecx
;lea dword ptr edx,[eax+ebx+020CH]
;cmp dword ptr [edx],'LaeR';ReaLize.def
;jne DataCD0Equal2
;cmp dword ptr [edx+4h],'.ezi'
;jne DataCD0Equal2
;cmp dword ptr [edx+8h],'fed'
;jne DataCD0Equal2
;mov dword ptr [ebp+NtThreadControlStructFirst.dwMyNumber],ecx
;cmp dword ptr [eax+ebx+8h],4b4000h
;jbe DataCD0End
;mov dword ptr edx,[eax+ebx+8h]
;mov dword ptr [ebp+NtThreadControlStructFirst.pMyRedirect],edx
;mov dword ptr edx,[edx+3C4h]
;mov dword ptr [ebp+NtThreadControlStructFirst.pWhereMyCns],edx
;mov dword ptr edx,[edx]
;mov dword ptr [ebp+NtThreadControlStructFirst.pMyCns],edx
;mov dword ptr ecx,[edx+4h]
;mov dword ptr [ebp+NtThreadControlStructFirst.dwStatenoGap],ecx
;mov dword ptr ecx,[edx+8h]
;mov dword ptr [ebp+NtThreadControlStructFirst.dwManyStateno],ecx
;DataCD0End:
;popad
;ret
;SomeDataGet endp
;
;
;GuranteeMyCnsNumber proc
;pushad
;cmp dword ptr [ebp+NtThreadControlStructFirst.pMyCns],4B4000h
;jbe GuranteeMyCnsNumberEnd
;mov dword ptr edi,[ebp+NtThreadControlStructFirst.pMyCns]
;mov dword ptr eax,[ebp+NtThreadControlStructFirst.pWhereMyCns]
;mov dword ptr [eax],edi
;mov dword ptr ecx,[ebp+NtThreadControlStructFirst.dwManyStateno]
;mov dword ptr eax,[ebp+NtThreadControlStructFirst.dwStatenoGap]
;mov dword ptr [edi+8h],ecx
;mov dword ptr [edi+0Ch],ecx
;mov dword ptr [edi+10h],ecx
;mov dword ptr [edi+4h],eax
;GuranteeMyCnsNumberEnd:
;
;popad
;ret
;GuranteeMyCnsNumber endp
;
;
;ProtectMyBasicData proc
;pushad
;mov dword ptr eax,ds:[4B5B4Ch]
;xor ecx,ecx
;ProtectMyBasicDataEcxInc:
;inc ecx
;cmp ecx,4
;ja ProtectMyBasicDataEnd
;cmp dword ptr [eax+0B754h+4*ecx],500000h
;jbe ProtectMyBasicDataEcxInc
;mov dword ptr ebx,[eax+0B754h+4*ecx]
;mov dword ptr edi,[ebp+NtThreadControlStructFirst.pMyRedirect]
;cmp dword ptr [ebx],edi
;jne ProtectMyBasicDataEcxInc
;mov dword ptr edx,[ebx+0Ch]
;mov dword ptr [ebp+NtThreadControlStructFirst.dwMyTeam],edx
;mov dword ptr [ebx+0BECh],0h
;mov dword ptr [ebx+0BF0H],0FFFFFFFFH
;mov dword ptr [ebx+0E24h],16h
;mov dword ptr [ebx+0E18h],0
;mov dword ptr [ebx+1DCh],7FFFFFFFH
;mov dword ptr [ebx+1E0h],7FFFFFFFH
;mov dword ptr [eax+15CH],0H;Pause
;mov dword ptr ecx,[ebx]
;mov dword ptr [ecx],'LaeR';ReaLize
;mov dword ptr [ecx+4h],'ezi'
;mov dword ptr [ecx+30h],'LaeR'
;mov dword ptr [ecx+34h],'ezi'
;mov dword ptr [ecx+60h],'neC'
;mov dword ptr esi,ds:[4B5B4Ch]
;mov dword ptr [esi+0BC38h],1h
;mov dword ptr [esi+0BC34h],edx
;mov dword ptr ecx,ds:[4B68BCh]
;mov dword ptr [esi+0BC40h],ecx
;mov dword ptr [esi+91C0h],1
;mov dword ptr [esi+0BC04h+4*edx],7FFFFFFFH
;mov dword ptr [esi+98F0h],'pseD';Desp ire Win
;mov dword ptr [esi+98F4h],' eri'
;mov dword ptr [esi+98F8h],'niW'
;ProtectMyBasicDataEnd:
;popad
;ret
;ProtectMyBasicData endp

ModifySource proc
pushad






popad
ret
ModifySource endp











end start 























