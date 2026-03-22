package com.changdu.mobovideo.net;

import android.net.Uri;
import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.changdu.mobovideo.plugins.CDNetwork;
import com.sensorsdata.analytics.android.sdk.SensorsDataAPI;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.Call;
import okhttp3.Connection;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.HttpUrl;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class VideoNetworkTraceListener extends EventListener {

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Boolean f5562Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5563Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Boolean f5564Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Boolean f5565Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5566Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public VideoNetworkTraceModel f5567Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5568Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5569Wwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5570Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5571Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public StringBuilder f5574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f5575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentHashMap<String, String> f5561Wwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AtomicInteger f5560Wwwwwwwwwwwwwwwwww = new AtomicInteger(0);

    /* renamed from: Wwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final EventListener.Factory f5559Wwwwwwwwwwwwwwwww = new EventListener.Factory() { // from class: com.changdu.mobovideo.net.VideoNetworkTraceListener.1
        @Override // okhttp3.EventListener.Factory
        public EventListener Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Call call) {
            return new VideoNetworkTraceListener(call.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww());
        }
    };

    public final synchronized void Kkkkkkkkkkkkkkkkkkkkkkkkk(String str, String str2) {
        if (str2 == null) {
            return;
        }
        f5561Wwwwwwwwwwwwwwwwwww.put(str, str2);
    }

    public final void Kkkkkkkkkkkkkkkkkkkkkkkkkk(String str) {
        this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww.getNetworkEventsMap().put(str, Long.valueOf(SystemClock.elapsedRealtime()));
        Www(str);
    }

    public final void Www(String str) {
        long nanoTime = System.nanoTime() - this.f5575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        StringBuilder sb = this.f5574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        sb.append(String.format("%.3f-%s", Double.valueOf(nanoTime / 1000000.0d), str));
        sb.append(";");
    }

    public final synchronized String Wwww(String str) {
        try {
        } catch (Exception unused) {
            return "";
        }
        return f5561Wwwwwwwwwwwwwwwwwww.get(str);
    }

    public final void Wwwww() {
        Map<String, Object> generateTraceItemMap = this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww.generateTraceItemMap(this.f5562Wwwwwwwwwwwwwwwwwwww);
        if (generateTraceItemMap.isEmpty()) {
            return;
        }
        if (TextUtils.isEmpty(this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) && !TextUtils.isEmpty(this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww)) {
            this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwww(Uri.parse(this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww).getHost());
        }
        generateTraceItemMap.put("IP", this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        generateTraceItemMap.put("RequestHeaderLength", Long.valueOf(this.f5571Wwwwwwwwwwwwwwwwwwwwwwwwwwwww));
        generateTraceItemMap.put("RequestBodyLength", Long.valueOf(this.f5570Wwwwwwwwwwwwwwwwwwwwwwwwwwww));
        generateTraceItemMap.put("ResponseHeaderLength", Long.valueOf(this.f5569Wwwwwwwwwwwwwwwwwwwwwwwwwww));
        generateTraceItemMap.put("ResponseBodyLength", Long.valueOf(this.f5568Wwwwwwwwwwwwwwwwwwwwwwwwww));
        generateTraceItemMap.put("protocol", this.f5563Wwwwwwwwwwwwwwwwwwwww);
        if (this.f5564Wwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            generateTraceItemMap.put("DetailLog", this.f5574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        }
        JSONObject jSONObject = new JSONObject();
        try {
            for (Map.Entry<String, Object> entry : generateTraceItemMap.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
        } catch (Exception unused) {
        }
        SensorsDataAPI.sharedInstance().track("apiNetworkTrace", jSONObject);
    }

    @Override // okhttp3.EventListener
    public void Wwwwww(@NotNull Call call) {
        super.Wwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.SECURE_CONNECT_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwww(@NotNull Call call, @Nullable Handshake handshake) {
        super.Wwwwwww(call, handshake);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.SECURE_CONNECT_END);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.RESPONSE_HEADERS_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwww(@NotNull Call call, @NotNull Response response) {
        super.Wwwwwwwwww(call, response);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.RESPONSE_HEADERS_END);
        this.f5569Wwwwwwwwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkkkkkkkk().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        this.f5563Wwwwwwwwwwwwwwwwwwwww = response.Kkkkkkkkkk().toString();
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.RESPONSE_BODY_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwww(@NotNull Call call, long j) {
        super.Wwwwwwwwwwwww(call, j);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.RESPONSE_BODY_END);
        this.f5568Wwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.REQUEST_HEADERS_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwww(@NotNull Call call, @NotNull Request request) {
        super.Wwwwwwwwwwwwwww(call, request);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.REQUEST_HEADERS_END);
        this.f5571Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwwwwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.REQUEST_BODY_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwww(@NotNull Call call, long j) {
        super.Wwwwwwwwwwwwwwwwww(call, j);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.REQUEST_BODY_END);
        this.f5570Wwwwwwwwwwwwwwwwwwwwwwwwwwww = j;
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str) {
        super.Wwwwwwwwwwwwwwwwwwwww(call, str);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.DNS_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull String str, @NotNull List<InetAddress> list) {
        super.Wwwwwwwwwwwwwwwwwwwwww(call, str, list);
        if (this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.DNS_END);
            try {
                if (list.size() > 0) {
                    this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = list.get(0).getHostAddress();
                    Kkkkkkkkkkkkkkkkkkkkkkkkk(call.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwww(), this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwww(Call call, Connection connection) {
        super.Wwwwwwwwwwwwwwwwwwwwwww(call, connection);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CONNECTION_RELEASED);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwww(@NonNull Call call, @NonNull Connection connection) {
        super.Wwwwwwwwwwwwwwwwwwwwwwww(call, connection);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CONNECTION_ACQUIRED);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwww(call, inetSocketAddress, proxy);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CONNECT_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol, @NotNull IOException iOException) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwww(call, inetSocketAddress, proxy, protocol, iOException);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CONNECT_END);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull InetSocketAddress inetSocketAddress, @NotNull Proxy proxy, @Nullable Protocol protocol) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwww(call, inetSocketAddress, proxy, protocol);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CONNECT_END);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        this.f5566Wwwwwwwwwwwwwwwwwwwwwwww = String.valueOf(f5560Wwwwwwwwwwwwwwwwww.getAndIncrement());
        this.f5575Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.nanoTime();
        this.f5562Wwwwwwwwwwwwwwwwwwww = Boolean.valueOf(call.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwww().equals("GET"));
        this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww.setId(this.f5566Wwwwwwwwwwwwwwwwwwwwwwww);
        this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww.setTimestamp(System.currentTimeMillis());
        this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww.setUrl(this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CALL_START);
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call, @NotNull IOException iOException) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call, iOException);
        this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue();
    }

    @Override // okhttp3.EventListener
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Call call) {
        super.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(call);
        if (!this.f5565Wwwwwwwwwwwwwwwwwwwwwww.booleanValue()) {
            return;
        }
        Kkkkkkkkkkkkkkkkkkkkkkkkkk(VideoNetworkTraceModel.CALL_END);
        Wwwww();
    }

    public VideoNetworkTraceListener(HttpUrl httpUrl) {
        this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
        this.f5572Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
        this.f5571Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f5570Wwwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f5569Wwwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f5568Wwwwwwwwwwwwwwwwwwwwwwwwww = 0L;
        this.f5567Wwwwwwwwwwwwwwwwwwwwwwwww = new VideoNetworkTraceModel();
        this.f5566Wwwwwwwwwwwwwwwwwwwwwwww = "";
        Boolean bool = Boolean.FALSE;
        this.f5565Wwwwwwwwwwwwwwwwwwwwwww = bool;
        this.f5564Wwwwwwwwwwwwwwwwwwwwww = bool;
        this.f5563Wwwwwwwwwwwwwwwwwwwww = "";
        this.f5562Wwwwwwwwwwwwwwwwwwww = bool;
        this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = httpUrl.toString();
        this.f5574Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new StringBuilder();
        CDNetwork.Companion companion = CDNetwork.Companion;
        if (companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            for (String str : companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
                if (this.f5573Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str)) {
                    this.f5565Wwwwwwwwwwwwwwwwwwwwwww = Boolean.TRUE;
                    this.f5564Wwwwwwwwwwwwwwwwwwwwww = Boolean.valueOf(CDNetwork.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                    return;
                }
            }
        }
    }
}
