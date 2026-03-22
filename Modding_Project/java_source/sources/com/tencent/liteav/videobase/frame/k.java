package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.utils.ConsumerChainTimestamp;
import com.tencent.liteav.videobase.utils.ProducerChainTimestamp;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class k extends h<b> {

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a extends PixelFrame {
        private static final g<a> b = l.a();

        /* renamed from: a  reason: collision with root package name */
        private final b f10390a;

        public /* synthetic */ a(b bVar, Object obj, byte b2) {
            this(bVar, obj);
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setTextureId(int i) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Buffer");
        }

        private a(b bVar, Object obj) {
            super(b);
            bVar.retain();
            this.mWidth = bVar.c;
            this.mHeight = bVar.d;
            this.f10390a = bVar;
            this.mTextureId = bVar.f10391a;
            this.mGLContext = obj;
            int i = bVar.b;
            if (i == 3553) {
                this.mPixelBufferType = GLConstants.a.TEXTURE_2D;
            } else if (i == 36197) {
                this.mPixelBufferType = GLConstants.a.TEXTURE_OES;
            }
            this.mPixelFormatType = GLConstants.PixelFormatType.RGBA;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b extends d {

        /* renamed from: a  reason: collision with root package name */
        public int f10391a;
        public int b;
        public int c;
        public int d;
        private FrameMetaData e;
        private ProducerChainTimestamp f;
        private ConsumerChainTimestamp g;

        public b(g<? extends d> gVar) {
            super(gVar);
            this.f10391a = -1;
            this.b = 3553;
            this.c = 0;
            this.d = 0;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int a() {
            return this.f10391a;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int b() {
            return this.c;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int c() {
            return this.d;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final FrameMetaData d() {
            return this.e;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void e() {
            this.f10391a = -1;
            this.b = 3553;
            this.c = 0;
            this.d = 0;
            this.e = null;
            this.g = null;
            this.f = null;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final PixelFrame a(Object obj) {
            a aVar = new a(this, obj, (byte) 0);
            aVar.retain();
            return aVar;
        }
    }

    @Override // com.tencent.liteav.videobase.frame.h
    public final /* synthetic */ b a(g<b> gVar) {
        return new b(gVar);
    }
}
