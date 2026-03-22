package com.iab.omid.library.unity3d.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InterfaceC0077b f8517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public interface a {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar);
    }

    /* renamed from: com.iab.omid.library.unity3d.walking.async.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0077b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0077b interfaceC0077b) {
        this.f8517Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = interfaceC0077b;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        a aVar = this.f8518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aVar != null) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a aVar) {
        this.f8518Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }
}
