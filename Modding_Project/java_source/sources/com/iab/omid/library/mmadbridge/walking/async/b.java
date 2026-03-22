package com.iab.omid.library.mmadbridge.walking.async;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final InterfaceC0073b f8379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public a f8380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* loaded from: classes5.dex */
    public interface a {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(b bVar);
    }

    /* renamed from: com.iab.omid.library.mmadbridge.walking.async.b$b  reason: collision with other inner class name */
    /* loaded from: classes5.dex */
    public interface InterfaceC0073b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(InterfaceC0073b interfaceC0073b) {
        this.f8379Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = interfaceC0073b;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }

    @Override // android.os.AsyncTask
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void onPostExecute(String str) {
        a aVar = this.f8380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (aVar != null) {
            aVar.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(a aVar) {
        this.f8380Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = aVar;
    }
}
