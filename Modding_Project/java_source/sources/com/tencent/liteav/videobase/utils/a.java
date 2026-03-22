package com.tencent.liteav.videobase.utils;

import java.util.LinkedList;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final LinkedList<Runnable> f10394a = new LinkedList<>();

    public final void a() {
        LinkedList linkedList;
        synchronized (this.f10394a) {
            try {
                if (!this.f10394a.isEmpty()) {
                    linkedList = new LinkedList(this.f10394a);
                    this.f10394a.clear();
                } else {
                    linkedList = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        while (linkedList != null && !linkedList.isEmpty()) {
            ((Runnable) linkedList.removeFirst()).run();
        }
    }
}
