package com.tencent.thumbplayer.tcmedia.adapter.a.a;

import com.tencent.thumbplayer.tcmedia.api.TPSubtitleRenderModel;
import com.tencent.thumbplayer.tcmedia.core.common.TPSubtitleFrame;
import java.util.Map;
/* loaded from: classes6.dex */
public interface a {

    /* renamed from: com.tencent.thumbplayer.tcmedia.adapter.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes6.dex */
    public interface InterfaceC0217a {
        void a(e eVar);

        void a(TPSubtitleFrame tPSubtitleFrame);

        void a(String str);
    }

    /* loaded from: classes6.dex */
    public interface b {
        void a(int i, int i2);
    }

    /* loaded from: classes6.dex */
    public interface c {
        void a(int i, long j);

        void a(long j);
    }

    /* loaded from: classes6.dex */
    public interface d {
        long a();
    }

    /* loaded from: classes6.dex */
    public static class e {

        /* renamed from: a  reason: collision with root package name */
        String f10489a;

        public e(String str) {
            this.f10489a = str;
        }
    }

    void a();

    void a(int i);

    void a(InterfaceC0217a interfaceC0217a);

    void a(b bVar);

    void a(c cVar);

    void a(d dVar);

    void a(TPSubtitleRenderModel tPSubtitleRenderModel);

    void a(String str, Map<String, String> map, long j);

    void b();

    void c();

    void d();

    void e();

    void f();
}
