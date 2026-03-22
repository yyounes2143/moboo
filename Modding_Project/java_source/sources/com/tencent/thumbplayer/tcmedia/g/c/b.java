package com.tencent.thumbplayer.tcmedia.g.c;

import android.graphics.SurfaceTexture;
/* loaded from: classes6.dex */
public final class b extends SurfaceTexture {

    /* renamed from: a  reason: collision with root package name */
    private a f10629a;

    /* loaded from: classes6.dex */
    public interface a {
        void a();
    }

    public b(int i) {
        super(i);
    }

    public final void a(a aVar) {
        this.f10629a = aVar;
    }

    @Override // android.graphics.SurfaceTexture
    public final void release() {
        super.release();
        a aVar = this.f10629a;
        if (aVar != null) {
            aVar.a();
        }
    }
}
