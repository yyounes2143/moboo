package com.getkeepsafe.relinker.elf;

import com.getkeepsafe.relinker.elf.Elf;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class Elf32Header extends Elf.Header {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ElfParser f7525Wwwwwwwwwwwwwwwwwwwwwwwww;

    public Elf32Header(boolean z, ElfParser elfParser) throws IOException {
        ByteOrder byteOrder;
        this.f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
        this.f7525Wwwwwwwwwwwwwwwwwwwwwwwww = elfParser;
        ByteBuffer allocate = ByteBuffer.allocate(4);
        if (z) {
            byteOrder = ByteOrder.BIG_ENDIAN;
        } else {
            byteOrder = ByteOrder.LITTLE_ENDIAN;
        }
        allocate.order(byteOrder);
        this.f7518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 16L);
        this.f7517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, 28L);
        this.f7516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkk(allocate, 32L);
        this.f7515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 42L);
        this.f7514Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 44L);
        this.f7513Wwwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 46L);
        this.f7512Wwwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 48L);
        this.f7511Wwwwwwwwwwwwwwwwwwwwwwwwww = elfParser.Kkkkkkkkkkkkkkkkkkkkk(allocate, 50L);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.SectionHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
        return new Section32Header(this.f7525Wwwwwwwwwwwwwwwwwwwwwwwww, this, i);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.ProgramHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException {
        return new Program32Header(this.f7525Wwwwwwwwwwwwwwwwwwwwwwwww, this, j);
    }

    @Override // com.getkeepsafe.relinker.elf.Elf.Header
    public Elf.DynamicStructure Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) throws IOException {
        return new Dynamic32Structure(this.f7525Wwwwwwwwwwwwwwwwwwwwwwwww, this, j, i);
    }
}
