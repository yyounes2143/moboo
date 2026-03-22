package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.util.LiteavLog;
import com.tencent.liteav.videobase.utils.OpenGlUtils;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private int f10380a = -1;

    public final void a() {
        if (this.f10380a == -1) {
            this.f10380a = OpenGlUtils.generateFrameBufferId();
        }
    }

    public final void b() {
        OpenGlUtils.bindFramebuffer(36160, this.f10380a);
    }

    public final void c() {
        int i = this.f10380a;
        if (i == -1) {
            LiteavLog.d("GLFrameBuffer", "FrameBuffer is invalid");
        } else {
            OpenGlUtils.detachTextureFromFrameBuffer(i);
        }
    }

    public final void d() {
        int i = this.f10380a;
        if (i != -1) {
            OpenGlUtils.deleteFrameBuffer(i);
            this.f10380a = -1;
        }
    }

    public final void a(int i) {
        int i2 = this.f10380a;
        if (i2 == -1) {
            LiteavLog.d("GLFrameBuffer", "FrameBuffer is invalid");
        } else {
            OpenGlUtils.attachTextureToFrameBuffer(i, i2);
        }
    }
}
