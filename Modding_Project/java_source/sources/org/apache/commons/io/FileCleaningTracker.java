package org.apache.commons.io;

import java.io.File;
import java.lang.ref.PhantomReference;
import java.lang.ref.ReferenceQueue;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileCleaningTracker {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ReferenceQueue<Object> f13299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ReferenceQueue<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Collection<Tracker> f13298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.synchronizedSet(new HashSet());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final List<String> f13297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Collections.synchronizedList(new ArrayList());

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f13296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = false;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public final class Reaper extends Thread {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ FileCleaningTracker f13300Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            while (true) {
                if (this.f13300Wwwwwwwwwwwwwwwwwwwwwwwww.f13296Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww && this.f13300Wwwwwwwwwwwwwwwwwwwwwwwww.f13298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.size() <= 0) {
                    return;
                }
                try {
                    Tracker tracker = (Tracker) this.f13300Wwwwwwwwwwwwwwwwwwwwwwwww.f13299Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove();
                    this.f13300Wwwwwwwwwwwwwwwwwwwwwwwww.f13298Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(tracker);
                    if (!tracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                        this.f13300Wwwwwwwwwwwwwwwwwwwwwwwww.f13297Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(tracker.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    }
                    tracker.clear();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static final class Tracker extends PhantomReference<Object> {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final FileDeleteStrategy f13301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final String f13302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        public String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }

        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
            return this.f13301Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(new File(this.f13302Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        }
    }
}
