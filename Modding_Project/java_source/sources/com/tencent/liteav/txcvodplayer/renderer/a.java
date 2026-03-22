package com.tencent.liteav.txcvodplayer.renderer;

import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import com.tencent.liteav.txcplayer.ITXVCubePlayer;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface a {

    /* compiled from: Proguard */
    /* renamed from: com.tencent.liteav.txcvodplayer.renderer.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0211a {
        void a(b bVar);

        void a(b bVar, int i, int i2);

        boolean a(MotionEvent motionEvent);

        void b(b bVar);
    }

    /* compiled from: Proguard */
    /* loaded from: classes6.dex */
    public interface b {
        a a();

        void a(ITXVCubePlayer iTXVCubePlayer);

        Surface b();

        Surface c();
    }

    void a(int i, int i2);

    void a(InterfaceC0211a interfaceC0211a);

    boolean a();

    void b(int i, int i2);

    void b(InterfaceC0211a interfaceC0211a);

    View getView();

    void setAspectRatio(int i);

    void setVideoRotation(int i);
}
