package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.videobase.base.GLConstants;
import com.tencent.liteav.videobase.frame.a;
import com.tencent.liteav.videobase.utils.ConsumerChainTimestamp;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
import com.tencent.liteav.videobase.utils.ProducerChainTimestamp;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class e extends com.tencent.liteav.videobase.frame.a<d> {

    /* renamed from: a  reason: collision with root package name */
    private static final AtomicInteger f10381a = new AtomicInteger();

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class a extends d {

        /* renamed from: a  reason: collision with root package name */
        int f10382a;
        final int b;
        final int c;
        private FrameMetaData d;
        private ProducerChainTimestamp e;
        private ConsumerChainTimestamp f;

        public /* synthetic */ a(g gVar, int i, int i2, byte b) {
            this(gVar, i, i2);
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int a() {
            return this.f10382a;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int b() {
            return this.b;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final int c() {
            return this.c;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final FrameMetaData d() {
            return this.d;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final void e() {
            this.d = null;
            this.e = null;
            this.f = null;
        }

        @Override // com.tencent.liteav.videobase.frame.j
        public final void release() {
            super.release();
        }

        private a(g<d> gVar, int i, int i2) {
            super(gVar);
            this.f10382a = -1;
            this.b = i;
            this.c = i2;
        }

        @Override // com.tencent.liteav.videobase.frame.d
        public final PixelFrame a(Object obj) {
            b bVar = new b(this, obj, (byte) 0);
            bVar.retain();
            return bVar;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class b extends PixelFrame {
        private static final g<b> b = f.a();

        /* renamed from: a  reason: collision with root package name */
        private final d f10383a;

        public /* synthetic */ b(d dVar, Object obj, byte b2) {
            this(dVar, obj);
        }

        @Override // com.tencent.liteav.videobase.frame.PixelFrame
        public final void setTextureId(int i) {
            throw new UnsupportedOperationException("Object is allocated by pool, can't change its Buffer");
        }

        private b(d dVar, Object obj) {
            super(b);
            dVar.retain();
            this.mWidth = dVar.b();
            this.mHeight = dVar.c();
            this.f10383a = dVar;
            this.mTextureId = dVar.a();
            this.mGLContext = obj;
            this.mPixelBufferType = GLConstants.a.TEXTURE_2D;
            this.mPixelFormatType = GLConstants.PixelFormatType.RGBA;
            this.mMetaData = dVar.d();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public static class c implements a.InterfaceC0212a {

        /* renamed from: a  reason: collision with root package name */
        final int f10384a;
        final int b;

        public c(int i, int i2) {
            this.f10384a = i;
            this.b = i2;
        }

        public final boolean equals(Object obj) {
            if (obj.getClass() != c.class) {
                return false;
            }
            c cVar = (c) obj;
            if (this.f10384a != cVar.f10384a || this.b != cVar.b) {
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return (this.f10384a * 37213) + this.b;
        }
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final /* synthetic */ void a(d dVar) {
        a aVar = (a) dVar;
        OpenGlUtils.deleteTexture(aVar.f10382a);
        aVar.f10382a = -1;
        f10381a.getAndDecrement();
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final /* synthetic */ a.InterfaceC0212a b(d dVar) {
        d dVar2 = dVar;
        return new c(dVar2.b(), dVar2.c());
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final void b() {
        super.b();
    }

    public final d a(int i, int i2) {
        d dVar = (d) super.a(new c(i, i2));
        dVar.e();
        return dVar;
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final void a() {
        super.a();
    }

    @Override // com.tencent.liteav.videobase.frame.a
    public final /* synthetic */ d a(g<d> gVar, a.InterfaceC0212a interfaceC0212a) {
        c cVar = (c) interfaceC0212a;
        a aVar = new a(gVar, cVar.f10384a, cVar.b, (byte) 0);
        aVar.f10382a = OpenGlUtils.createTexture(aVar.b, aVar.c, 6408, 6408);
        f10381a.incrementAndGet();
        return aVar;
    }
}
