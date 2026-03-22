package com.iab.omid.library.vungle.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final c f8584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AudioManager f8586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f8587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f8587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f8586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (AudioManager) context.getSystemService("audio");
        this.f8585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
        this.f8584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().unregisterContentObserver(this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8587Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8584Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f != this.f8583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public final float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8585Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamVolume(3), this.f8586Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamMaxVolume(3));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f8583Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
