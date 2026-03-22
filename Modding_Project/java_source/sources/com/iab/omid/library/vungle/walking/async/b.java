package com.iab.omid.library.vungle.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InterfaceC0081b f8679Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8680Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public interface a {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar);
    }

    /* renamed from: com.iab.omid.library.vungle.walking.async.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0081b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0081b interfaceC0081b) {
        this.f8679Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = interfaceC0081b;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        a aVar = this.f8680Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aVar != null) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a aVar) {
        this.f8680Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }
}
