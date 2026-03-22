package com.bumptech.glide.load.data;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.HttpException;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import com.bumptech.glide.util.LogTime;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class HttpUrlFetcher implements DataFetcher<InputStream> {
    @VisibleForTesting

    /* renamed from: Wwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HttpUrlConnectionFactory f4203Wwwwwwwwwwwwwwwwwww = new DefaultHttpUrlConnectionFactory();

    /* renamed from: Wwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public volatile boolean f4204Wwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public InputStream f4205Wwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public HttpURLConnection f4206Wwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final HttpUrlConnectionFactory f4207Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f4208Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final GlideUrl f4209Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static class DefaultHttpUrlConnectionFactory implements HttpUrlConnectionFactory {
        @Override // com.bumptech.glide.load.data.HttpUrlFetcher.HttpUrlConnectionFactory
        public HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface HttpUrlConnectionFactory {
        HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url) throws IOException;
    }

    public HttpUrlFetcher(GlideUrl glideUrl, int i) {
        this(glideUrl, i, f4203Wwwwwwwwwwwwwwwwwww);
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i / 100 == 3) {
            return true;
        }
        return false;
    }

    public static boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i / 100 == 2) {
            return true;
        }
        return false;
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getResponseCode();
        } catch (IOException unused) {
            return -1;
        }
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwww(URL url, int i, URL url2, Map<String, String> map) throws HttpException {
        if (i < 5) {
            if (url2 != null) {
                try {
                    if (url.toURI().equals(url2.toURI())) {
                        throw new HttpException("In re-direct loop", -1);
                    }
                } catch (URISyntaxException unused) {
                }
            }
            HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url, map);
            this.f4206Wwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            try {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.connect();
                this.f4205Wwwwwwwwwwwwwwwwwwwww = this.f4206Wwwwwwwwwwwwwwwwwwwwww.getInputStream();
                if (this.f4204Wwwwwwwwwwwwwwwwwwww) {
                    return null;
                }
                int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4206Wwwwwwwwwwwwwwwwwwwwww);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    return Wwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4206Wwwwwwwwwwwwwwwwwwwwww);
                }
                if (Wwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                    String headerField = this.f4206Wwwwwwwwwwwwwwwwwwwwww.getHeaderField("Location");
                    if (!TextUtils.isEmpty(headerField)) {
                        try {
                            URL url3 = new URL(url, headerField);
                            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                            return Wwwwwwwwwwwwwwwwwwwwwwwww(url3, i + 1, url, map);
                        } catch (MalformedURLException e) {
                            throw new HttpException("Bad redirect url: " + headerField, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, e);
                        }
                    }
                    throw new HttpException("Received empty or null redirect url", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
                    throw new HttpException(Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                } else {
                    try {
                        throw new HttpException(this.f4206Wwwwwwwwwwwwwwwwwwwwww.getResponseMessage(), Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                    } catch (IOException e2) {
                        throw new HttpException("Failed to get a response message", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2, e2);
                    }
                }
            } catch (IOException e3) {
                throw new HttpException("Failed to connect or obtain data", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f4206Wwwwwwwwwwwwwwwwwwwwww), e3);
            }
        }
        throw new HttpException("Too many (> 5) redirects!", -1);
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwww(HttpURLConnection httpURLConnection) throws HttpException {
        try {
            if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
                this.f4205Wwwwwwwwwwwwwwwwwwwww = ContentLengthInputStream.Wwwwwwwwwwwwwwwwwwwwwwwwwww(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
            } else {
                if (Log.isLoggable("HttpUrlFetcher", 3)) {
                    httpURLConnection.getContentEncoding();
                }
                this.f4205Wwwwwwwwwwwwwwwwwwwww = httpURLConnection.getInputStream();
            }
            return this.f4205Wwwwwwwwwwwwwwwwwwwww;
        } catch (IOException e) {
            throw new HttpException("Failed to obtain InputStream", Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpURLConnection), e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Priority priority, @NonNull DataFetcher.DataCallback<? super InputStream> dataCallback) {
        long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        try {
            try {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwww(this.f4209Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwww(), 0, null, this.f4209Wwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()));
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            } catch (IOException e) {
                dataCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                if (Log.isLoggable("HttpUrlFetcher", 2)) {
                    LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
        } catch (Throwable th) {
            if (Log.isLoggable("HttpUrlFetcher", 2)) {
                LogTime.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public DataSource Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return DataSource.REMOTE;
    }

    public final HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url, Map<String, String> map) throws HttpException {
        try {
            HttpURLConnection Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f4207Wwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url);
            for (Map.Entry<String, String> entry : map.entrySet()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.addRequestProperty(entry.getKey(), entry.getValue());
            }
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setConnectTimeout(this.f4208Wwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setReadTimeout(this.f4208Wwwwwwwwwwwwwwwwwwwwwwww);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setUseCaches(false);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setDoInput(true);
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.setInstanceFollowRedirects(false);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        } catch (IOException e) {
            throw new HttpException("URL.openConnection threw", 0, e);
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        InputStream inputStream = this.f4205Wwwwwwwwwwwwwwwwwwwww;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f4206Wwwwwwwwwwwwwwwwwwwwww;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
        this.f4206Wwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public void cancel() {
        this.f4204Wwwwwwwwwwwwwwwwwwww = true;
    }

    @VisibleForTesting
    public HttpUrlFetcher(GlideUrl glideUrl, int i, HttpUrlConnectionFactory httpUrlConnectionFactory) {
        this.f4209Wwwwwwwwwwwwwwwwwwwwwwwww = glideUrl;
        this.f4208Wwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f4207Wwwwwwwwwwwwwwwwwwwwwww = httpUrlConnectionFactory;
    }
}
