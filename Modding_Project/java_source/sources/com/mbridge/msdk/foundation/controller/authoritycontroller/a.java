package com.mbridge.msdk.foundation.controller.authoritycontroller;

import android.text.TextUtils;
import com.mbridge.msdk.MBridgeConstans;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected int f8940a;
    protected int b;
    protected int c;
    protected int d;

    public void a(int i) {
        this.f8940a = i;
        this.b = i;
        this.c = i;
    }

    public void authDeviceIdStatus(int i) {
        this.b = i;
    }

    public void authGenDataStatus(int i) {
        this.f8940a = i;
    }

    public void authOtherDataStatus(int i) {
        this.d = i;
    }

    public void authSerialIdStatus(int i) {
        this.c = i;
    }

    public int getAuthDeviceIdStatus() {
        return this.b;
    }

    public int getAuthGenDataStatus() {
        return this.f8940a;
    }

    public int getAuthSerialIdStatus() {
        return this.c;
    }

    public int getOtherDataStatus() {
        return this.d;
    }

    public int getStatusByKey(String str) {
        if (!TextUtils.isEmpty(str)) {
            str.getClass();
            char c = 65535;
            switch (str.hashCode()) {
                case -1262204598:
                    if (str.equals(MBridgeConstans.AUTHORITY_SERIAL_ID)) {
                        c = 0;
                        break;
                    }
                    break;
                case -663505496:
                    if (str.equals(MBridgeConstans.AUTHORITY_DEVICE_ID)) {
                        c = 1;
                        break;
                    }
                    break;
                case 1026848797:
                    if (str.equals(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                        c = 2;
                        break;
                    }
                    break;
                case 1564683028:
                    if (str.equals(MBridgeConstans.AUTHORITY_OTHER)) {
                        c = 3;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    return this.c;
                case 1:
                    return this.b;
                case 2:
                    return this.f8940a;
                case 3:
                    return this.d;
            }
        }
        return 1;
    }
}
