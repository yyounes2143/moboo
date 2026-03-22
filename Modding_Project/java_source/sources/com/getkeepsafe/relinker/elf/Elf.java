package com.getkeepsafe.relinker.elf;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public interface Elf {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class DynamicStructure {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7509Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7510Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class Header {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7511Wwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7512Wwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7513Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7514Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7515Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7516Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public int f7518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f7519Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public abstract SectionHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException;

        public abstract ProgramHeader Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j) throws IOException;

        public abstract DynamicStructure Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(long j, int i) throws IOException;
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class ProgramHeader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7520Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7521Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7522Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7523Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public static abstract class SectionHeader {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public long f7524Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }
}
