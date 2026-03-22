package com.iab.omid.library.mmadbridge.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final c f8283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AudioManager f8285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f8286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f8286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f8285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (AudioManager) context.getSystemService("audio");
        this.f8284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
        this.f8283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().unregisterContentObserver(this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8286Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8283Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f != this.f8282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public final float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8284Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamVolume(3), this.f8285Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamMaxVolume(3));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f8282Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
