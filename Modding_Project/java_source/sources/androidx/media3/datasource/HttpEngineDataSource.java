package androidx.media3.datasource;

import android.net.Uri;
import android.net.http.HeaderBlock;
import android.net.http.HttpEngine;
import android.net.http.HttpException;
import android.net.http.UrlRequest;
import android.net.http.UrlRequest$Callback;
import android.net.http.UrlRequest$StatusListener;
import android.net.http.UrlResponseInfo;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.VisibleForTesting;
import androidx.media3.common.util.Assertions;
import androidx.media3.common.util.Clock;
import androidx.media3.common.util.ConditionVariable;
import androidx.media3.common.util.UnstableApi;
import androidx.media3.common.util.Util;
import androidx.media3.datasource.HttpDataSource;
import com.google.common.base.Ascii;
import com.google.common.base.Predicate;
import com.google.common.net.HttpHeaders;
import com.google.common.primitives.Longs;
import com.google.errorprone.annotations.CanIgnoreReturnValue;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
/* compiled from: Proguard */
@RequiresApi(34)
@UnstableApi
/* loaded from: classes.dex */
public final class HttpEngineDataSource extends BaseDataSource implements HttpDataSource {
    @UnstableApi
    public static final int DEFAULT_CONNECT_TIMEOUT_MILLIS = 8000;
    @UnstableApi
    public static final int DEFAULT_READ_TIMEOUT_MILLIS = 8000;
    private static final int READ_BUFFER_SIZE_BYTES = 32768;
    private long bytesRemaining;
    private final Clock clock;
    private final int connectTimeoutMs;
    @Nullable
    private Predicate<String> contentTypePredicate;
    private volatile long currentConnectTimeoutMs;
    @Nullable
    private DataSpec currentDataSpec;
    @Nullable
    private UrlRequestWrapper currentUrlRequestWrapper;
    @Nullable
    private final HttpDataSource.RequestProperties defaultRequestProperties;
    @Nullable
    private IOException exception;
    private final Executor executor;
    private boolean finished;
    private final boolean handleSetCookieRequests;
    private final HttpEngine httpEngine;
    private final boolean keepPostFor302Redirects;
    private boolean opened;
    private final ConditionVariable operation;
    @Nullable
    private ByteBuffer readBuffer;
    private final int readTimeoutMs;
    private final int requestPriority;
    private final HttpDataSource.RequestProperties requestProperties;
    private final boolean resetTimeoutOnRedirects;
    @Nullable
    private UrlResponseInfo responseInfo;
    @Nullable
    private final String userAgent;

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class Factory implements HttpDataSource.Factory {
        @Nullable
        private Predicate<String> contentTypePredicate;
        private final Executor executor;
        private boolean handleSetCookieRequests;
        private final HttpEngine httpEngine;
        private boolean keepPostFor302Redirects;
        private boolean resetTimeoutOnRedirects;
        @Nullable
        private TransferListener transferListener;
        @Nullable
        private String userAgent;
        private final HttpDataSource.RequestProperties defaultRequestProperties = new HttpDataSource.RequestProperties();
        private int requestPriority = 3;
        private int connectTimeoutMs = 8000;
        private int readTimeoutMs = 8000;

        public Factory(HttpEngine httpEngine, Executor executor) {
            this.httpEngine = Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Assertions.checkNotNull(httpEngine));
            this.executor = executor;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setConnectionTimeoutMs(int i) {
            this.connectTimeoutMs = i;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setContentTypePredicate(@Nullable Predicate<String> predicate) {
            this.contentTypePredicate = predicate;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @CanIgnoreReturnValue
        @UnstableApi
        public /* bridge */ /* synthetic */ HttpDataSource.Factory setDefaultRequestProperties(Map map) {
            return setDefaultRequestProperties((Map<String, String>) map);
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setHandleSetCookieRequests(boolean z) {
            this.handleSetCookieRequests = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setKeepPostFor302Redirects(boolean z) {
            this.keepPostFor302Redirects = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setReadTimeoutMs(int i) {
            this.readTimeoutMs = i;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setRequestPriority(int i) {
            this.requestPriority = i;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setResetTimeoutOnRedirects(boolean z) {
            this.resetTimeoutOnRedirects = z;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setTransferListener(@Nullable TransferListener transferListener) {
            this.transferListener = transferListener;
            return this;
        }

        @CanIgnoreReturnValue
        @UnstableApi
        public Factory setUserAgent(@Nullable String str) {
            this.userAgent = str;
            return this;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory, androidx.media3.datasource.DataSource.Factory
        @UnstableApi
        public HttpDataSource createDataSource() {
            HttpEngineDataSource httpEngineDataSource = new HttpEngineDataSource(this.httpEngine, this.executor, this.requestPriority, this.connectTimeoutMs, this.readTimeoutMs, this.resetTimeoutOnRedirects, this.handleSetCookieRequests, this.userAgent, this.defaultRequestProperties, this.contentTypePredicate, this.keepPostFor302Redirects);
            TransferListener transferListener = this.transferListener;
            if (transferListener != null) {
                httpEngineDataSource.addTransferListener(transferListener);
            }
            return httpEngineDataSource;
        }

        @Override // androidx.media3.datasource.HttpDataSource.Factory
        @CanIgnoreReturnValue
        @UnstableApi
        public final Factory setDefaultRequestProperties(Map<String, String> map) {
            this.defaultRequestProperties.clearAndSet(map);
            return this;
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public final class UrlRequestCallback implements UrlRequest$Callback {
        private volatile boolean isClosed;

        private UrlRequestCallback() {
            this.isClosed = false;
        }

        public void close() {
            this.isClosed = true;
        }

        public synchronized void onCanceled(UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo) {
        }

        public synchronized void onFailed(UrlRequest urlRequest, @Nullable UrlResponseInfo urlResponseInfo, HttpException httpException) {
            int errorCode;
            try {
                if (this.isClosed) {
                    return;
                }
                if (Wwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpException)) {
                    errorCode = Wwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(httpException).getErrorCode();
                    if (errorCode == 1) {
                        HttpEngineDataSource.this.exception = new UnknownHostException();
                        HttpEngineDataSource.this.operation.open();
                    }
                }
                HttpEngineDataSource.this.exception = httpException;
                HttpEngineDataSource.this.operation.open();
            } catch (Throwable th) {
                throw th;
            }
        }

        public synchronized void onReadCompleted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, ByteBuffer byteBuffer) {
            if (this.isClosed) {
                return;
            }
            HttpEngineDataSource.this.operation.open();
        }

        public synchronized void onRedirectReceived(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo, String str) {
            int httpStatusCode;
            boolean z;
            HeaderBlock headers;
            Map asMap;
            DataSpec withUri;
            String httpStatusText;
            HeaderBlock headers2;
            Map asMap2;
            if (this.isClosed) {
                return;
            }
            DataSpec dataSpec = (DataSpec) Assertions.checkNotNull(HttpEngineDataSource.this.currentDataSpec);
            httpStatusCode = urlResponseInfo.getHttpStatusCode();
            if (dataSpec.httpMethod == 2 && (httpStatusCode == 307 || httpStatusCode == 308)) {
                HttpEngineDataSource httpEngineDataSource = HttpEngineDataSource.this;
                httpStatusText = urlResponseInfo.getHttpStatusText();
                headers2 = urlResponseInfo.getHeaders();
                asMap2 = headers2.getAsMap();
                httpEngineDataSource.exception = new HttpDataSource.InvalidResponseCodeException(httpStatusCode, httpStatusText, null, asMap2, dataSpec, Util.EMPTY_BYTE_ARRAY);
                HttpEngineDataSource.this.operation.open();
                return;
            }
            if (HttpEngineDataSource.this.resetTimeoutOnRedirects) {
                HttpEngineDataSource.this.resetConnectTimeout();
            }
            if (HttpEngineDataSource.this.keepPostFor302Redirects && dataSpec.httpMethod == 2 && httpStatusCode == 302) {
                z = true;
            } else {
                z = false;
            }
            if (z || HttpEngineDataSource.this.handleSetCookieRequests) {
                headers = urlResponseInfo.getHeaders();
                asMap = headers.getAsMap();
                String parseCookies = HttpEngineDataSource.parseCookies((List) asMap.get(HttpHeaders.SET_COOKIE));
                if (z || !TextUtils.isEmpty(parseCookies)) {
                    urlRequest.cancel();
                    if (!z && dataSpec.httpMethod == 2) {
                        withUri = dataSpec.buildUpon().setUri(str).setHttpMethod(1).setHttpBody(null).build();
                    } else {
                        withUri = dataSpec.withUri(Uri.parse(str));
                    }
                    if (!TextUtils.isEmpty(parseCookies)) {
                        HashMap hashMap = new HashMap();
                        hashMap.putAll(dataSpec.httpRequestHeaders);
                        hashMap.put(HttpHeaders.COOKIE, parseCookies);
                        withUri = withUri.buildUpon().setHttpRequestHeaders(hashMap).build();
                    }
                    try {
                        UrlRequestWrapper buildRequestWrapper = HttpEngineDataSource.this.buildRequestWrapper(withUri);
                        if (HttpEngineDataSource.this.currentUrlRequestWrapper != null) {
                            HttpEngineDataSource.this.currentUrlRequestWrapper.close();
                        }
                        HttpEngineDataSource.this.currentUrlRequestWrapper = buildRequestWrapper;
                        HttpEngineDataSource.this.currentUrlRequestWrapper.start();
                        return;
                    } catch (IOException e) {
                        HttpEngineDataSource.this.exception = e;
                        return;
                    }
                }
                urlRequest.followRedirect();
                return;
            }
            urlRequest.followRedirect();
        }

        public synchronized void onResponseStarted(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (!this.isClosed) {
                HttpEngineDataSource.this.responseInfo = urlResponseInfo;
                HttpEngineDataSource.this.operation.open();
            }
        }

        public synchronized void onSucceeded(UrlRequest urlRequest, UrlResponseInfo urlResponseInfo) {
            if (!this.isClosed) {
                HttpEngineDataSource.this.finished = true;
                HttpEngineDataSource.this.operation.open();
            }
        }
    }

    /* compiled from: Proguard */
    /* loaded from: classes.dex */
    public static final class UrlRequestWrapper {
        private final UrlRequest urlRequest;
        private final UrlRequestCallback urlRequestCallback;

        public UrlRequestWrapper(UrlRequest urlRequest, UrlRequestCallback urlRequestCallback) {
            this.urlRequest = urlRequest;
            this.urlRequestCallback = urlRequestCallback;
        }

        public void close() {
            this.urlRequestCallback.close();
            this.urlRequest.cancel();
        }

        public int getStatus() throws InterruptedException {
            final ConditionVariable conditionVariable = new ConditionVariable();
            final int[] iArr = new int[1];
            this.urlRequest.getStatus(new UrlRequest$StatusListener() { // from class: androidx.media3.datasource.HttpEngineDataSource.UrlRequestWrapper.1
                public void onStatus(int i) {
                    iArr[0] = i;
                    conditionVariable.open();
                }
            });
            conditionVariable.block();
            return iArr[0];
        }

        public UrlRequest$Callback getUrlRequestCallback() {
            return this.urlRequestCallback;
        }

        public void read(ByteBuffer byteBuffer) {
            this.urlRequest.read(byteBuffer);
        }

        public void start() {
            this.urlRequest.start();
        }
    }

    @UnstableApi
    public HttpEngineDataSource(HttpEngine httpEngine, Executor executor, int i, int i2, int i3, boolean z, boolean z2, @Nullable String str, @Nullable HttpDataSource.RequestProperties requestProperties, @Nullable Predicate<String> predicate, boolean z3) {
        super(true);
        this.httpEngine = Wwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Assertions.checkNotNull(httpEngine));
        this.executor = (Executor) Assertions.checkNotNull(executor);
        this.requestPriority = i;
        this.connectTimeoutMs = i2;
        this.readTimeoutMs = i3;
        this.resetTimeoutOnRedirects = z;
        this.handleSetCookieRequests = z2;
        this.userAgent = str;
        this.defaultRequestProperties = requestProperties;
        this.contentTypePredicate = predicate;
        this.keepPostFor302Redirects = z3;
        this.clock = Clock.DEFAULT;
        this.requestProperties = new HttpDataSource.RequestProperties();
        this.operation = new ConditionVariable();
    }

    private boolean blockUntilConnectTimeout() throws InterruptedException {
        long elapsedRealtime = this.clock.elapsedRealtime();
        boolean z = false;
        while (!z && elapsedRealtime < this.currentConnectTimeoutMs) {
            z = this.operation.block((this.currentConnectTimeoutMs - elapsedRealtime) + 5);
            elapsedRealtime = this.clock.elapsedRealtime();
        }
        return z;
    }

    private UrlRequest.Builder buildRequestBuilder(DataSpec dataSpec, UrlRequest$Callback urlRequest$Callback) throws IOException {
        UrlRequest.Builder newUrlRequestBuilder;
        UrlRequest.Builder priority;
        UrlRequest.Builder directExecutorAllowed;
        newUrlRequestBuilder = this.httpEngine.newUrlRequestBuilder(dataSpec.uri.toString(), this.executor, urlRequest$Callback);
        priority = newUrlRequestBuilder.setPriority(this.requestPriority);
        directExecutorAllowed = priority.setDirectExecutorAllowed(true);
        HashMap hashMap = new HashMap();
        HttpDataSource.RequestProperties requestProperties = this.defaultRequestProperties;
        if (requestProperties != null) {
            hashMap.putAll(requestProperties.getSnapshot());
        }
        hashMap.putAll(this.requestProperties.getSnapshot());
        hashMap.putAll(dataSpec.httpRequestHeaders);
        for (Map.Entry entry : hashMap.entrySet()) {
            directExecutorAllowed.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        if (dataSpec.httpBody != null && !hashMap.containsKey("Content-Type")) {
            throw new OpenException("HTTP request with non-empty body must set Content-Type", dataSpec, 1004, 0);
        }
        String buildRangeRequestHeader = HttpUtil.buildRangeRequestHeader(dataSpec.position, dataSpec.length);
        if (buildRangeRequestHeader != null) {
            directExecutorAllowed.addHeader("Range", buildRangeRequestHeader);
        }
        String str = this.userAgent;
        if (str != null) {
            directExecutorAllowed.addHeader("User-Agent", str);
        }
        directExecutorAllowed.setHttpMethod(dataSpec.getHttpMethodString());
        if (dataSpec.httpBody != null) {
            directExecutorAllowed.setUploadDataProvider(new ByteArrayUploadDataProvider(dataSpec.httpBody), this.executor);
        }
        return directExecutorAllowed;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public UrlRequestWrapper buildRequestWrapper(DataSpec dataSpec) throws IOException {
        UrlRequest build;
        UrlRequestCallback urlRequestCallback = new UrlRequestCallback();
        build = buildRequestBuilder(dataSpec, urlRequestCallback).build();
        return new UrlRequestWrapper(build, urlRequestCallback);
    }

    private static int copyByteBuffer(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) {
        int min = Math.min(byteBuffer.remaining(), byteBuffer2.remaining());
        int limit = byteBuffer.limit();
        byteBuffer.limit(byteBuffer.position() + min);
        byteBuffer2.put(byteBuffer);
        byteBuffer.limit(limit);
        return min;
    }

    @Nullable
    private static String getFirstHeader(Map<String, List<String>> map, String str) {
        List<String> list = map.get(str);
        if (list != null && !list.isEmpty()) {
            return list.get(0);
        }
        return null;
    }

    private ByteBuffer getOrCreateReadBuffer() {
        if (this.readBuffer == null) {
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(32768);
            this.readBuffer = allocateDirect;
            allocateDirect.limit(0);
        }
        return this.readBuffer;
    }

    private static boolean isCompressed(UrlResponseInfo urlResponseInfo) {
        HeaderBlock headers;
        List<Map.Entry> asList;
        headers = urlResponseInfo.getHeaders();
        asList = headers.getAsList();
        for (Map.Entry entry : asList) {
            if (((String) entry.getKey()).equalsIgnoreCase("Content-Encoding")) {
                return !((String) entry.getValue()).equalsIgnoreCase("identity");
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public static String parseCookies(@Nullable List<String> list) {
        if (list != null && !list.isEmpty()) {
            return TextUtils.join(";", list);
        }
        return null;
    }

    private void readInternal(ByteBuffer byteBuffer, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        ((UrlRequestWrapper) Util.castNonNull(this.currentUrlRequestWrapper)).read(byteBuffer);
        try {
        } catch (InterruptedException unused) {
            if (byteBuffer == this.readBuffer) {
                this.readBuffer = null;
            }
            Thread.currentThread().interrupt();
            this.exception = new InterruptedIOException();
        } catch (SocketTimeoutException e) {
            if (byteBuffer == this.readBuffer) {
                this.readBuffer = null;
            }
            this.exception = new HttpDataSource.HttpDataSourceException(e, dataSpec, 2002, 2);
        }
        if (!this.operation.block(this.readTimeoutMs)) {
            throw new SocketTimeoutException();
        }
        IOException iOException = this.exception;
        if (iOException != null) {
            if (iOException instanceof HttpDataSource.HttpDataSourceException) {
                throw ((HttpDataSource.HttpDataSourceException) iOException);
            }
            throw HttpDataSource.HttpDataSourceException.createForIOException(iOException, dataSpec, 2);
        }
    }

    private byte[] readResponseBody() throws IOException {
        byte[] bArr = Util.EMPTY_BYTE_ARRAY;
        ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
        while (!this.finished) {
            this.operation.close();
            orCreateReadBuffer.clear();
            readInternal(orCreateReadBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
            orCreateReadBuffer.flip();
            if (orCreateReadBuffer.remaining() > 0) {
                int length = bArr.length;
                bArr = Arrays.copyOf(bArr, bArr.length + orCreateReadBuffer.remaining());
                orCreateReadBuffer.get(bArr, length, orCreateReadBuffer.remaining());
            }
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resetConnectTimeout() {
        this.currentConnectTimeoutMs = this.clock.elapsedRealtime() + this.connectTimeoutMs;
    }

    private void skipFully(long j, DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        int i;
        if (j != 0) {
            ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
            while (j > 0) {
                try {
                    this.operation.close();
                    orCreateReadBuffer.clear();
                    readInternal(orCreateReadBuffer, dataSpec);
                    if (!Thread.currentThread().isInterrupted()) {
                        if (!this.finished) {
                            orCreateReadBuffer.flip();
                            Assertions.checkState(orCreateReadBuffer.hasRemaining());
                            int min = (int) Math.min(orCreateReadBuffer.remaining(), j);
                            orCreateReadBuffer.position(orCreateReadBuffer.position() + min);
                            j -= min;
                        } else {
                            throw new OpenException(dataSpec, 2008, 14);
                        }
                    } else {
                        throw new InterruptedIOException();
                    }
                } catch (IOException e) {
                    if (!(e instanceof HttpDataSource.HttpDataSourceException)) {
                        if (e instanceof SocketTimeoutException) {
                            i = 2002;
                        } else {
                            i = 2001;
                        }
                        throw new OpenException(e, dataSpec, i, 14);
                    }
                    throw ((HttpDataSource.HttpDataSourceException) e);
                }
            }
        }
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearAllRequestProperties() {
        this.requestProperties.clear();
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void clearRequestProperty(String str) {
        this.requestProperties.remove(str);
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public synchronized void close() {
        try {
            UrlRequestWrapper urlRequestWrapper = this.currentUrlRequestWrapper;
            if (urlRequestWrapper != null) {
                urlRequestWrapper.close();
                this.currentUrlRequestWrapper = null;
            }
            ByteBuffer byteBuffer = this.readBuffer;
            if (byteBuffer != null) {
                byteBuffer.limit(0);
            }
            this.currentDataSpec = null;
            this.responseInfo = null;
            this.exception = null;
            this.finished = false;
            if (this.opened) {
                this.opened = false;
                transferEnded();
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Nullable
    @VisibleForTesting
    @UnstableApi
    public UrlRequest$Callback getCurrentUrlRequestCallback() {
        UrlRequestWrapper urlRequestWrapper = this.currentUrlRequestWrapper;
        if (urlRequestWrapper == null) {
            return null;
        }
        return urlRequestWrapper.getUrlRequestCallback();
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public int getResponseCode() {
        int httpStatusCode;
        int httpStatusCode2;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo != null) {
            httpStatusCode = urlResponseInfo.getHttpStatusCode();
            if (httpStatusCode > 0) {
                httpStatusCode2 = this.responseInfo.getHttpStatusCode();
                return httpStatusCode2;
            }
            return -1;
        }
        return -1;
    }

    @Override // androidx.media3.datasource.BaseDataSource, androidx.media3.datasource.DataSource
    @UnstableApi
    public Map<String, List<String>> getResponseHeaders() {
        HeaderBlock headers;
        Map<String, List<String>> asMap;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo != null) {
            headers = urlResponseInfo.getHeaders();
            asMap = headers.getAsMap();
            return asMap;
        }
        return Collections.EMPTY_MAP;
    }

    @Override // androidx.media3.datasource.DataSource
    @Nullable
    @UnstableApi
    public Uri getUri() {
        String url;
        UrlResponseInfo urlResponseInfo = this.responseInfo;
        if (urlResponseInfo != null) {
            url = urlResponseInfo.getUrl();
            return Uri.parse(url);
        }
        return null;
    }

    @Override // androidx.media3.datasource.DataSource
    @UnstableApi
    public long open(DataSpec dataSpec) throws HttpDataSource.HttpDataSourceException {
        int httpStatusCode;
        HeaderBlock headers;
        Map asMap;
        byte[] bArr;
        DataSourceException dataSourceException;
        String httpStatusText;
        String firstHeader;
        Assertions.checkNotNull(dataSpec);
        Assertions.checkState(!this.opened);
        this.operation.close();
        resetConnectTimeout();
        this.currentDataSpec = dataSpec;
        try {
            UrlRequestWrapper buildRequestWrapper = buildRequestWrapper(dataSpec);
            this.currentUrlRequestWrapper = buildRequestWrapper;
            buildRequestWrapper.start();
            transferInitializing(dataSpec);
            try {
                boolean blockUntilConnectTimeout = blockUntilConnectTimeout();
                IOException iOException = this.exception;
                if (iOException != null) {
                    String message = iOException.getMessage();
                    if (message != null && Ascii.toLowerCase(message).contains("err_cleartext_not_permitted")) {
                        throw new HttpDataSource.CleartextNotPermittedException(iOException, dataSpec);
                    }
                    throw new OpenException(iOException, dataSpec, 2001, buildRequestWrapper.getStatus());
                } else if (blockUntilConnectTimeout) {
                    UrlResponseInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Assertions.checkNotNull(this.responseInfo));
                    httpStatusCode = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getHttpStatusCode();
                    headers = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getHeaders();
                    asMap = headers.getAsMap();
                    long j = 0;
                    long j2 = -1;
                    if (httpStatusCode >= 200 && httpStatusCode <= 299) {
                        Predicate<String> predicate = this.contentTypePredicate;
                        if (predicate != null && (firstHeader = getFirstHeader(asMap, "Content-Type")) != null && !predicate.apply(firstHeader)) {
                            throw new HttpDataSource.InvalidContentTypeException(firstHeader, dataSpec);
                        }
                        if (httpStatusCode == 200) {
                            long j3 = dataSpec.position;
                            if (j3 != 0) {
                                j = j3;
                            }
                        }
                        if (!isCompressed(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2)) {
                            long j4 = dataSpec.length;
                            if (j4 != -1) {
                                this.bytesRemaining = j4;
                            } else {
                                long contentLength = HttpUtil.getContentLength(getFirstHeader(asMap, "Content-Length"), getFirstHeader(asMap, HttpHeaders.CONTENT_RANGE));
                                if (contentLength != -1) {
                                    j2 = contentLength - j;
                                }
                                this.bytesRemaining = j2;
                            }
                        } else {
                            this.bytesRemaining = dataSpec.length;
                        }
                        this.opened = true;
                        transferStarted(dataSpec);
                        skipFully(j, dataSpec);
                        return this.bytesRemaining;
                    }
                    if (httpStatusCode == 416) {
                        if (dataSpec.position == HttpUtil.getDocumentSize(getFirstHeader(asMap, HttpHeaders.CONTENT_RANGE))) {
                            this.opened = true;
                            transferStarted(dataSpec);
                            long j5 = dataSpec.length;
                            if (j5 == -1) {
                                return 0L;
                            }
                            return j5;
                        }
                    }
                    try {
                        bArr = readResponseBody();
                    } catch (IOException unused) {
                        bArr = Util.EMPTY_BYTE_ARRAY;
                    }
                    byte[] bArr2 = bArr;
                    if (httpStatusCode == 416) {
                        dataSourceException = new DataSourceException(2008);
                    } else {
                        dataSourceException = null;
                    }
                    DataSourceException dataSourceException2 = dataSourceException;
                    httpStatusText = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getHttpStatusText();
                    throw new HttpDataSource.InvalidResponseCodeException(httpStatusCode, httpStatusText, dataSourceException2, asMap, dataSpec, bArr2);
                } else {
                    throw new OpenException(new SocketTimeoutException(), dataSpec, 2002, buildRequestWrapper.getStatus());
                }
            } catch (InterruptedException unused2) {
                Thread.currentThread().interrupt();
                throw new OpenException(new InterruptedIOException(), dataSpec, 1004, -1);
            }
        } catch (IOException e) {
            if (e instanceof HttpDataSource.HttpDataSourceException) {
                throw ((HttpDataSource.HttpDataSourceException) e);
            }
            throw new OpenException(e, dataSpec, 2000, 0);
        }
    }

    @Override // androidx.media3.common.DataReader
    @UnstableApi
    public int read(byte[] bArr, int i, int i2) throws HttpDataSource.HttpDataSourceException {
        Assertions.checkState(this.opened);
        if (i2 == 0) {
            return 0;
        }
        if (this.bytesRemaining == 0) {
            return -1;
        }
        ByteBuffer orCreateReadBuffer = getOrCreateReadBuffer();
        if (!orCreateReadBuffer.hasRemaining()) {
            this.operation.close();
            orCreateReadBuffer.clear();
            readInternal(orCreateReadBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
            if (this.finished) {
                this.bytesRemaining = 0L;
                return -1;
            }
            orCreateReadBuffer.flip();
            Assertions.checkState(orCreateReadBuffer.hasRemaining());
        }
        long j = this.bytesRemaining;
        if (j == -1) {
            j = Long.MAX_VALUE;
        }
        int min = (int) Longs.min(j, orCreateReadBuffer.remaining(), i2);
        orCreateReadBuffer.get(bArr, i, min);
        long j2 = this.bytesRemaining;
        if (j2 != -1) {
            this.bytesRemaining = j2 - min;
        }
        bytesTransferred(min);
        return min;
    }

    @Override // androidx.media3.datasource.HttpDataSource
    @UnstableApi
    public void setRequestProperty(String str, String str2) {
        this.requestProperties.set(str, str2);
    }

    /* compiled from: Proguard */
    @UnstableApi
    /* loaded from: classes.dex */
    public static final class OpenException extends HttpDataSource.HttpDataSourceException {
        public final int httpEngineConnectionStatus;

        public OpenException(IOException iOException, DataSpec dataSpec, int i, int i2) {
            super(iOException, dataSpec, i, 1);
            this.httpEngineConnectionStatus = i2;
        }

        public OpenException(String str, DataSpec dataSpec, int i, int i2) {
            super(str, dataSpec, i, 1);
            this.httpEngineConnectionStatus = i2;
        }

        public OpenException(DataSpec dataSpec, int i, int i2) {
            super(dataSpec, i, 1);
            this.httpEngineConnectionStatus = i2;
        }
    }

    @UnstableApi
    public int read(ByteBuffer byteBuffer) throws HttpDataSource.HttpDataSourceException {
        int copyByteBuffer;
        Assertions.checkState(this.opened);
        if (byteBuffer.isDirect()) {
            if (byteBuffer.hasRemaining()) {
                if (this.bytesRemaining == 0) {
                    return -1;
                }
                int remaining = byteBuffer.remaining();
                ByteBuffer byteBuffer2 = this.readBuffer;
                if (byteBuffer2 != null && (copyByteBuffer = copyByteBuffer(byteBuffer2, byteBuffer)) != 0) {
                    long j = this.bytesRemaining;
                    if (j != -1) {
                        this.bytesRemaining = j - copyByteBuffer;
                    }
                    bytesTransferred(copyByteBuffer);
                    return copyByteBuffer;
                }
                this.operation.close();
                readInternal(byteBuffer, (DataSpec) Util.castNonNull(this.currentDataSpec));
                if (this.finished) {
                    this.bytesRemaining = 0L;
                    return -1;
                }
                Assertions.checkState(remaining > byteBuffer.remaining());
                int remaining2 = remaining - byteBuffer.remaining();
                long j2 = this.bytesRemaining;
                if (j2 != -1) {
                    this.bytesRemaining = j2 - remaining2;
                }
                bytesTransferred(remaining2);
                return remaining2;
            }
            return 0;
        }
        throw new IllegalArgumentException("Passed buffer is not a direct ByteBuffer");
    }
}
