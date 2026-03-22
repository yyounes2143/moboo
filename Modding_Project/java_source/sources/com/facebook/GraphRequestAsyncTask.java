package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import java.net.HttpURLConnection;
import java.util.Arrays;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\b\u0016\u0018\u0000 %2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001:\u0001%B\u0019\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nB\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0017¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00020\u000f2\f\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0014¢\u0006\u0004\b\u0013\u0010\u0014J+\u0010\u0017\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\u0012\u0010\u0016\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0015\"\u00020\u0002H\u0017¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0019R\u0017\u0010\b\u001a\u00020\u00078\u0006¢\u0006\f\n\u0004\b\u0013\u0010\u001a\u001a\u0004\b\u001b\u0010\u001cR4\u0010$\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e2\u000e\u0010\u001f\u001a\n\u0018\u00010\u001dj\u0004\u0018\u0001`\u001e8\u0004@BX\u0084\u000e¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/facebook/GraphRequestAsyncTask;", "Landroid/os/AsyncTask;", "Ljava/lang/Void;", "", "Lcom/facebook/GraphResponse;", "Ljava/net/HttpURLConnection;", "connection", "Lcom/facebook/GraphRequestBatch;", "requests", "<init>", "(Ljava/net/HttpURLConnection;Lcom/facebook/GraphRequestBatch;)V", "(Lcom/facebook/GraphRequestBatch;)V", "", "toString", "()Ljava/lang/String;", "", "onPreExecute", "()V", "result", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/List;)V", "", "params", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([Ljava/lang/Void;)Ljava/util/List;", "Ljava/net/HttpURLConnection;", "Lcom/facebook/GraphRequestBatch;", "getRequests", "()Lcom/facebook/GraphRequestBatch;", "Ljava/lang/Exception;", "Lkotlin/Exception;", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/Exception;", "getException", "()Ljava/lang/Exception;", "exception", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public class GraphRequestAsyncTask extends AsyncTask<Void, Void, List<? extends GraphResponse>> {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = GraphRequestAsyncTask.class.getCanonicalName();
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Exception f6043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GraphRequestBatch f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpURLConnection f6045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\n \u0005*\u0004\u0018\u00010\u00040\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/GraphRequestAsyncTask$Companion;", "", "()V", "TAG", "", "kotlin.jvm.PlatformType", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public GraphRequestAsyncTask(@Nullable HttpURLConnection httpURLConnection, @NotNull GraphRequestBatch graphRequestBatch) {
        this.f6045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpURLConnection;
        this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = graphRequestBatch;
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull List<GraphResponse> list) {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                super.onPostExecute(list);
                Exception exc = this.f6043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (exc != null) {
                    Utility utility = Utility.INSTANCE;
                    String str = f6042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    Utility.Illllllllllllllllllllll(str, String.format("onPostExecute: exception encountered during request: %s", Arrays.copyOf(new Object[]{exc.getMessage()}, 1)));
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @VisibleForTesting(otherwise = 4)
    @Nullable
    public List<GraphResponse> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Void... voidArr) {
        try {
            if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
                return null;
            }
            try {
                HttpURLConnection httpURLConnection = this.f6045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (httpURLConnection == null) {
                    return this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                }
                return GraphRequest.Companion.Wwwwwwwwwwwwwwwwwwww(httpURLConnection, this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            } catch (Exception e) {
                this.f6043Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = e;
                return null;
            }
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ List<? extends GraphResponse> doInBackground(Void[] voidArr) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(voidArr);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    public /* bridge */ /* synthetic */ void onPostExecute(List<? extends GraphResponse> list) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    @Override // android.os.AsyncTask
    @VisibleForTesting(otherwise = 4)
    public void onPreExecute() {
        Handler handler;
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            try {
                super.onPreExecute();
                if (FacebookSdk.Wwww()) {
                    Utility utility = Utility.INSTANCE;
                    String str = f6042Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                    StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                    Utility.Illllllllllllllllllllll(str, String.format("execute async task: %s", Arrays.copyOf(new Object[]{this}, 1)));
                }
                if (this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwww() == null) {
                    if (Thread.currentThread() instanceof HandlerThread) {
                        handler = new Handler();
                    } else {
                        handler = new Handler(Looper.getMainLooper());
                    }
                    this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwww(handler);
                }
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            }
        }
    }

    @NotNull
    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f6045Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + ", requests: " + this.f6044Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "}";
    }

    public GraphRequestAsyncTask(@NotNull GraphRequestBatch graphRequestBatch) {
        this(null, graphRequestBatch);
    }
}
