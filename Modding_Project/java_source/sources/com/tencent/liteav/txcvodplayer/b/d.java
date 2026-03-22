package com.tencent.liteav.txcvodplayer.b;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Base64;
import com.tencent.liteav.base.util.LiteavLog;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public final class d {
    protected e c;
    protected f d;
    public boolean e;
    private Thread h;

    /* renamed from: a  reason: collision with root package name */
    final String f10331a = new String(Base64.decode("aHR0cDovL3BsYXl2aWRlby5xY2xvdWQuY29tL2dldHBsYXlpbmZvL3Yy", 0));
    final String b = new String(Base64.decode("aHR0cHM6Ly9wbGF5dmlkZW8ucWNsb3VkLmNvbS9nZXRwbGF5aW5mby92Mg==", 0));
    private final int f = 0;
    private final int g = 1;
    private Handler i = new Handler(Looper.getMainLooper()) { // from class: com.tencent.liteav.txcvodplayer.b.d.1
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            d dVar = d.this;
            e eVar = dVar.c;
            if (eVar != null) {
                int i = message.what;
                if (i != 0) {
                    if (i != 1) {
                        return;
                    }
                    eVar.a(dVar, (String) message.obj, message.arg1);
                    return;
                }
                eVar.a(dVar);
            }
        }
    };

    public final int a(final int i, final String str, final String str2, final String str3, final int i2, final String str4) {
        if (i == 0 || str == null) {
            return -1;
        }
        if ((str2 != null || i2 > 0) && str4 == null) {
            return -1;
        }
        Thread thread = new Thread("getPlayInfo") { // from class: com.tencent.liteav.txcvodplayer.b.d.2
            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                String format;
                BufferedReader bufferedReader = null;
                try {
                    try {
                        try {
                            Looper.prepare();
                            d dVar = d.this;
                            if (dVar.e) {
                                format = String.format(Locale.ROOT, "%s/%d/%s", dVar.b, Integer.valueOf(i), str);
                            } else {
                                format = String.format(Locale.ROOT, "%s/%d/%s", dVar.f10331a, Integer.valueOf(i), str);
                            }
                            String str5 = str2;
                            String str6 = str3;
                            int i3 = i2;
                            String str7 = str4;
                            StringBuilder sb = new StringBuilder();
                            if (str5 != null) {
                                sb.append("t=" + str5 + "&");
                            }
                            if (str6 != null) {
                                sb.append("us=" + str6 + "&");
                            }
                            if (str7 != null) {
                                sb.append("sign=" + str7 + "&");
                            }
                            if (i3 >= 0) {
                                sb.append("exper=" + i3 + "&");
                            }
                            if (sb.length() > 1) {
                                sb.deleteCharAt(sb.length() - 1);
                            }
                            String sb2 = sb.toString();
                            if (sb2 != null) {
                                format = format + "?" + sb2;
                            }
                            URL url = new URL(format);
                            LiteavLog.d("TXCVodPlayerNetApi", "getplayinfo: ".concat(String.valueOf(format)));
                            HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                            httpURLConnection.connect();
                            if (httpURLConnection.getResponseCode() == 200) {
                                BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                                try {
                                    StringBuilder sb3 = new StringBuilder();
                                    while (true) {
                                        String readLine = bufferedReader2.readLine();
                                        if (readLine == null) {
                                            break;
                                        }
                                        sb3.append(readLine);
                                    }
                                    d.a(d.this, sb3.toString());
                                    bufferedReader = bufferedReader2;
                                } catch (JSONException unused) {
                                    bufferedReader = bufferedReader2;
                                    d.this.a("Incorrect format", -2);
                                    if (bufferedReader == null) {
                                        return;
                                    }
                                    bufferedReader.close();
                                } catch (Exception e) {
                                    e = e;
                                    bufferedReader = bufferedReader2;
                                    LiteavLog.d("TXCVodPlayerNetApi", "http exception: " + e.getMessage());
                                    d.this.a("The request was exceptional", -2);
                                    if (bufferedReader == null) {
                                        return;
                                    }
                                    bufferedReader.close();
                                } catch (Throwable th) {
                                    th = th;
                                    bufferedReader = bufferedReader2;
                                    if (bufferedReader != null) {
                                        try {
                                            bufferedReader.close();
                                        } catch (IOException unused2) {
                                        }
                                    }
                                    throw th;
                                }
                            } else {
                                d.this.a("Request failed", -1);
                            }
                            if (bufferedReader != null) {
                                bufferedReader.close();
                            }
                        } catch (IOException unused3) {
                        }
                    } catch (JSONException unused4) {
                    } catch (Exception e2) {
                        e = e2;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        };
        this.h = thread;
        thread.start();
        return 0;
    }

    public final void a(String str, int i) {
        Message message = new Message();
        message.what = 1;
        message.arg1 = i;
        message.obj = str;
        this.i.sendMessage(message);
    }

    public final void a(e eVar) {
        this.c = eVar;
    }

    public final f a() {
        return this.d;
    }

    public static /* synthetic */ void a(d dVar, String str) throws JSONException {
        JSONObject jSONObject = new JSONObject(str);
        int i = jSONObject.getInt("code");
        if (i != 0) {
            String string = jSONObject.getString("message");
            LiteavLog.e("TXCVodPlayerNetApi", string);
            dVar.a(string, i);
            return;
        }
        f fVar = new f(jSONObject);
        dVar.d = fVar;
        if (fVar.a() == null) {
            dVar.a("No playback address", -3);
        } else {
            dVar.i.sendEmptyMessage(0);
        }
    }
}
