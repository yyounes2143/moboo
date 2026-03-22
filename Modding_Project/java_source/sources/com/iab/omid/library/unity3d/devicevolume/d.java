package com.iab.omid.library.unity3d.devicevolume;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes5.dex */
public final class d extends ContentObserver {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public float f8429Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final c f8430Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final a f8431Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final AudioManager f8432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f8433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public d(Handler handler, Context context, a aVar, c cVar) {
        super(handler);
        this.f8433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
        this.f8432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (AudioManager) context.getSystemService("audio");
        this.f8431Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
        this.f8430Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = cVar;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().unregisterContentObserver(this);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8429Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f8433Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        this.f8430Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.a(this.f8429Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(float f) {
        if (f != this.f8429Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            return true;
        }
        return false;
    }

    public final float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f8431Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f8432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamVolume(3), this.f8432Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getStreamMaxVolume(3));
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        super.onChange(z);
        float Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
            this.f8429Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        }
    }
}
