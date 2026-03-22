package com.tencent.thumbplayer.tcmedia.tplayer.a;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes6.dex */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static final Map<Integer, String> f10663a;
    private int b = 1;

    static {
        HashMap hashMap = new HashMap();
        f10663a = hashMap;
        hashMap.put(1, "IDLE");
        hashMap.put(2, "PREPARING");
        hashMap.put(3, "PREPARED");
    }

    public synchronized void a(int i) {
        this.b = i;
    }

    public synchronized boolean b(int i) {
        if (this.b == i) {
            return true;
        }
        return false;
    }

    public synchronized String toString() {
        return "state[ cur : " + f10663a.get(Integer.valueOf(this.b)) + " ]";
    }
}
