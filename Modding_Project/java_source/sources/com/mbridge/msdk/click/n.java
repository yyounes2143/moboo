package com.mbridge.msdk.click;

import android.net.Uri;
import android.text.TextUtils;
import com.google.common.net.HttpHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.k0;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class n {
    private static final AtomicInteger d = new AtomicInteger(1);

    /* renamed from: a  reason: collision with root package name */
    private com.mbridge.msdk.setting.g f8784a;
    private String b;
    private int c = 9377;

    public n() {
        com.mbridge.msdk.setting.g d2 = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
        this.f8784a = d2;
        if (d2 == null) {
            this.f8784a = com.mbridge.msdk.setting.h.b().a();
        }
    }

    private JSONObject b(String str, CampaignEx campaignEx, boolean z, boolean z2) {
        JSONObject jSONObject = new JSONObject();
        try {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String host = parse.getHost();
                String path = parse.getPath();
                String encodedQuery = parse.getEncodedQuery();
                this.b = host;
                jSONObject.put("uri", "https://" + host + path);
                jSONObject.put("data", encodedQuery);
            }
        } catch (Throwable th) {
            o0.b("SocketSpider", th.getMessage());
        }
        try {
            JSONObject jSONObject2 = new JSONObject();
            if (!z && !z2) {
                jSONObject2.put("User-Agent", k0.i());
            }
            if (campaignEx != null) {
                if (z && campaignEx.getcUA() == 1) {
                    jSONObject2.put("User-Agent", k0.i());
                }
                if (z2 && campaignEx.getImpUA() == 1) {
                    jSONObject2.put("User-Agent", k0.i());
                }
            } else {
                jSONObject2.put("User-Agent", k0.i());
            }
            jSONObject2.put(HttpHeaders.ACCEPT_ENCODING, "gzip");
            if (this.f8784a.I0() && !TextUtils.isEmpty(str)) {
                jSONObject2.put("referer", str);
            }
            jSONObject.put("header", jSONObject2);
        } catch (Throwable th2) {
            o0.b("SocketSpider", th2.getMessage());
        }
        return jSONObject;
    }

    public com.mbridge.msdk.click.entity.a a(String str, CampaignEx campaignEx, boolean z, boolean z2) {
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        aVar.g = str;
        if (TextUtils.isEmpty(str)) {
            aVar.h = "request url can not null.";
            return aVar;
        }
        String replace = str.replace(" ", "%20");
        JSONObject b = b(replace, campaignEx, z, z2);
        if (b.length() == 0) {
            aVar.h = "request content generation failed.";
            return aVar;
        } else if (TextUtils.isEmpty(b.optString("uri"))) {
            aVar.h = "request url parse error.";
            return aVar;
        } else {
            if (campaignEx != null) {
                int trackingTcpPort = campaignEx.getTrackingTcpPort();
                if (trackingTcpPort == 0) {
                    trackingTcpPort = 9377;
                }
                this.c = trackingTcpPort;
            }
            if (TextUtils.isEmpty(this.b)) {
                aVar.h = "request url parse error.";
                return aVar;
            }
            return a(replace, b.toString());
        }
    }

    private com.mbridge.msdk.click.entity.a a(String str, String str2) {
        OutputStream outputStream;
        int length;
        String str3;
        com.mbridge.msdk.click.entity.a aVar = new com.mbridge.msdk.click.entity.a();
        Socket socket = null;
        try {
            Socket socket2 = new Socket(this.b, this.c);
            try {
                socket2.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                OutputStream outputStream2 = socket2.getOutputStream();
                ByteBuffer wrap = ByteBuffer.wrap(new byte[8]);
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                wrap.order(byteOrder);
                wrap.put((byte) 2);
                wrap.put((byte) 3);
                wrap.putShort((short) d.getAndIncrement());
                if (TextUtils.isEmpty(str2)) {
                    wrap.putInt(0);
                    outputStream2.write(wrap.array());
                    length = 0;
                } else {
                    byte[] a2 = a(str2);
                    length = a2.length;
                    wrap.putInt(length);
                    outputStream2.write(wrap.array());
                    outputStream2.write(a2);
                }
                outputStream2.flush();
                o0.a("SocketSpider", "Socket Request : header : " + Arrays.toString(wrap.array()) + " length : " + length);
                InputStream inputStream = socket2.getInputStream();
                byte[] bArr = new byte[8];
                inputStream.read(bArr, 0, 8);
                ByteBuffer wrap2 = ByteBuffer.wrap(bArr);
                wrap2.order(byteOrder);
                int i = wrap2.getInt(4);
                byte b = bArr[1];
                boolean z = b == 3;
                boolean z2 = b == 2;
                o0.b("SocketSpider", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i + " isGzip : " + z);
                byte[] bArr2 = new byte[i];
                new DataInputStream(socket2.getInputStream()).readFully(bArr2);
                if (!z && i > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                    z = true;
                }
                if (z2 && i == 0) {
                    aVar.f = 200;
                    aVar.g = str;
                    aVar.e = 0;
                    try {
                        socket2.close();
                        outputStream2.close();
                        return aVar;
                    } catch (Exception e) {
                        o0.b("SocketSpider", e.getMessage());
                    }
                } else if (i < 1) {
                    aVar.f = 200;
                    aVar.g = str;
                    aVar.e = 0;
                    try {
                        socket2.close();
                        outputStream2.close();
                        return aVar;
                    } catch (Exception e2) {
                        o0.b("SocketSpider", e2.getMessage());
                    }
                } else {
                    if (z) {
                        str3 = a(bArr2);
                    } else {
                        str3 = new String(bArr2);
                    }
                    if (!TextUtils.isEmpty(str3)) {
                        aVar.f = 200;
                        aVar.g = str;
                        aVar.e = 0;
                        try {
                            JSONObject optJSONObject = new JSONObject(str3).optJSONObject("data");
                            if (optJSONObject != null) {
                                String optString = optJSONObject.optString(FirebaseAnalytics.Param.LOCATION);
                                if (!TextUtils.isEmpty(optString)) {
                                    aVar.f = 302;
                                    aVar.f8777a = optString;
                                }
                            }
                        } catch (Throwable th) {
                            o0.b("SocketSpider", th.getMessage());
                        }
                        try {
                            socket2.close();
                            outputStream2.close();
                        } catch (Exception e3) {
                            o0.b("SocketSpider", e3.getMessage());
                        }
                    } else {
                        inputStream.close();
                        try {
                            socket2.close();
                            outputStream2.close();
                        } catch (Exception e4) {
                            o0.b("SocketSpider", e4.getMessage());
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
                socket = socket2;
                try {
                    o0.a("SocketSpider", "Socket exception: " + th.getMessage());
                    aVar.h = th.getMessage();
                    if (socket != null) {
                        try {
                            socket.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } catch (Exception e5) {
                            o0.b("SocketSpider", e5.getMessage());
                        }
                    }
                    return aVar;
                } catch (Throwable th3) {
                    if (socket != null) {
                        try {
                            socket.close();
                            if (outputStream != null) {
                                outputStream.close();
                            }
                        } catch (Exception e6) {
                            o0.b("SocketSpider", e6.getMessage());
                        }
                    }
                    throw th3;
                }
            }
        } catch (Throwable th4) {
            th = th4;
            outputStream = null;
        }
        return aVar;
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int read = gZIPInputStream.read(bArr2, 0, 1024);
            if (read > 0) {
                byteArrayOutputStream.write(bArr2, 0, read);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }
}
