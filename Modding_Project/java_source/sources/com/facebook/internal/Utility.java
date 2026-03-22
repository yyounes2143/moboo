package com.facebook.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.hardware.display.DisplayManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Parcel;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.autofill.AutofillManager;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.facebook.AccessToken;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.GraphResponse;
import com.facebook.HttpMethod;
import com.facebook.appevents.UserDataStore;
import com.facebook.appevents.internal.AppLinkManager;
import com.facebook.internal.FeatureManager;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import com.google.common.base.Ascii;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.mbridge.msdk.mbbid.out.BidResponsed;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URLConnection;
import java.net.URLDecoder;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.TimeZone;
import java.util.regex.Pattern;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000 \u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\u0012\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0003\n\u0002\b\b\n\u0002\u0010\"\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0012\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0006\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0014\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u008a\u0002B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001d\u0010\u0007\u001a\u00020\u00062\f\u0010\u0005\u001a\b\u0012\u0002\b\u0003\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u000b\u001a\u00020\u00062\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u000e\u001a\u0004\u0018\u00010\t2\b\u0010\n\u001a\u0004\u0018\u00010\t2\b\u0010\r\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0010\u001a\u00020\tH\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0015\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u0004\u0018\u00010\t2\b\u0010\u0010\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b\u0017\u0010\u0012J!\u0010\u0019\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0019\u0010\u000fJ!\u0010\u001a\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u001f\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ-\u0010%\u001a\u00020$2\b\u0010 \u001a\u0004\u0018\u00010\t2\b\u0010!\u001a\u0004\u0018\u00010\t2\b\u0010#\u001a\u0004\u0018\u00010\"H\u0007¢\u0006\u0004\b%\u0010&J\u0019\u0010(\u001a\u00020\"2\b\u0010'\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b(\u0010)J+\u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020\"2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010+\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\b-\u0010.J+\u00100\u001a\u00020,2\u0006\u0010*\u001a\u00020\"2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010/\u001a\u0004\u0018\u00010$H\u0007¢\u0006\u0004\b0\u00101J+\u00103\u001a\u00020\u00062\u0006\u00102\u001a\u00020\"2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010+\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b3\u00104J\u0019\u00107\u001a\u00020,2\b\u00106\u001a\u0004\u0018\u000105H\u0007¢\u0006\u0004\b7\u00108J\u0019\u0010;\u001a\u00020,2\b\u0010:\u001a\u0004\u0018\u000109H\u0007¢\u0006\u0004\b;\u0010<J\u0019\u0010?\u001a\u00020\t2\b\u0010>\u001a\u0004\u0018\u00010=H\u0007¢\u0006\u0004\b?\u0010@J#\u0010D\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u00010C2\u0006\u0010B\u001a\u00020AH\u0007¢\u0006\u0004\bD\u0010EJ#\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0C2\u0006\u0010B\u001a\u00020AH\u0007¢\u0006\u0004\bF\u0010EJ-\u0010K\u001a\u0016\u0012\u0004\u0012\u00020\t\u0018\u00010Ij\n\u0012\u0004\u0012\u00020\t\u0018\u0001`J2\b\u0010H\u001a\u0004\u0018\u00010GH\u0007¢\u0006\u0004\bK\u0010LJ\u001d\u0010N\u001a\b\u0012\u0004\u0012\u00020\t0M2\u0006\u0010H\u001a\u00020GH\u0007¢\u0006\u0004\bN\u0010OJ-\u0010Q\u001a\u0004\u0018\u00010\u00012\u0006\u0010B\u001a\u00020A2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010P\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\bQ\u0010RJ\u0019\u0010U\u001a\u00020\t2\b\u0010T\u001a\u0004\u0018\u00010SH\u0007¢\u0006\u0004\bU\u0010VJ!\u0010Z\u001a\u00020Y2\b\u0010T\u001a\u0004\u0018\u00010S2\u0006\u0010X\u001a\u00020WH\u0007¢\u0006\u0004\bZ\u0010[J\u001f\u0010]\u001a\u00020,2\u0006\u0010>\u001a\u00020=2\u0006\u0010\\\u001a\u00020\tH\u0002¢\u0006\u0004\b]\u0010^J\u0017\u0010_\u001a\u00020,2\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0004\b_\u0010`J)\u0010e\u001a\u00020,2\b\u0010a\u001a\u0004\u0018\u00010\t2\u000e\u0010d\u001a\n\u0018\u00010bj\u0004\u0018\u0001`cH\u0007¢\u0006\u0004\be\u0010fJ#\u0010h\u001a\u00020,2\b\u0010a\u001a\u0004\u0018\u00010\t2\b\u0010g\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0004\bh\u0010iJ-\u0010l\u001a\u00020,2\b\u0010a\u001a\u0004\u0018\u00010\t2\b\u0010g\u001a\u0004\u0018\u00010\t2\b\u0010k\u001a\u0004\u0018\u00010jH\u0007¢\u0006\u0004\bl\u0010mJ)\u0010p\u001a\u00020\u0006\"\u0004\b\u0000\u0010n2\b\u0010o\u001a\u0004\u0018\u00018\u00002\b\u0010*\u001a\u0004\u0018\u00018\u0000H\u0007¢\u0006\u0004\bp\u0010qJ\u001d\u0010r\u001a\b\u0012\u0004\u0012\u00020\t0M2\u0006\u0010H\u001a\u00020GH\u0007¢\u0006\u0004\br\u0010OJ\u001d\u0010t\u001a\b\u0012\u0004\u0012\u00020\t0s2\u0006\u0010H\u001a\u00020GH\u0007¢\u0006\u0004\bt\u0010uJ'\u0010w\u001a\u00020\t2\u0016\u0010v\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\t0CH\u0007¢\u0006\u0004\bw\u0010xJ#\u0010z\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0C2\u0006\u0010y\u001a\u00020\tH\u0007¢\u0006\u0004\bz\u0010{J?\u0010\u0081\u0001\u001a\u00020,2\u0006\u0010|\u001a\u00020A2\b\u0010~\u001a\u0004\u0018\u00010}2\b\u0010\u007f\u001a\u0004\u0018\u00010\t2\u0007\u0010\u0080\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0006\b\u0081\u0001\u0010\u0082\u0001J\u0014\u0010\u0083\u0001\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0006\b\u0083\u0001\u0010\u0084\u0001J#\u0010\u0086\u0001\u001a\u00020,2\u0006\u0010|\u001a\u00020A2\u0007\u0010\u0085\u0001\u001a\u00020=H\u0007¢\u0006\u0006\b\u0086\u0001\u0010\u0087\u0001JP\u0010\u008e\u0001\u001a\u0005\u0018\u00010\u008d\u00012\f\u0010\u0089\u0001\u001a\u0007\u0012\u0002\b\u00030\u0088\u00012\u0007\u0010\u008a\u0001\u001a\u00020\t2\"\u0010\u008c\u0001\u001a\u0012\u0012\r\b\u0001\u0012\t\u0012\u0002\b\u0003\u0018\u00010\u0088\u00010\u008b\u0001\"\t\u0012\u0002\b\u0003\u0018\u00010\u0088\u0001H\u0007¢\u0006\u0006\b\u008e\u0001\u0010\u008f\u0001JK\u0010\u0091\u0001\u001a\u0005\u0018\u00010\u008d\u00012\u0007\u0010\u0090\u0001\u001a\u00020\t2\u0007\u0010\u008a\u0001\u001a\u00020\t2\"\u0010\u008c\u0001\u001a\u0012\u0012\r\b\u0001\u0012\t\u0012\u0002\b\u0003\u0018\u00010\u0088\u00010\u008b\u0001\"\t\u0012\u0002\b\u0003\u0018\u00010\u0088\u0001H\u0007¢\u0006\u0006\b\u0091\u0001\u0010\u0092\u0001JC\u0010\u0096\u0001\u001a\u0004\u0018\u00010\u00012\t\u0010\u0093\u0001\u001a\u0004\u0018\u00010\u00012\b\u0010\u0094\u0001\u001a\u00030\u008d\u00012\u0018\u0010\u0095\u0001\u001a\r\u0012\b\b\u0001\u0012\u0004\u0018\u00010\u00010\u008b\u0001\"\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0006\b\u0096\u0001\u0010\u0097\u0001J\u001b\u0010\u0098\u0001\u001a\u00020\t2\b\u0010>\u001a\u0004\u0018\u00010=H\u0007¢\u0006\u0005\b\u0098\u0001\u0010@J\u001e\u0010\u0099\u0001\u001a\u0004\u0018\u00010\t2\b\u0010/\u001a\u0004\u0018\u00010$H\u0007¢\u0006\u0006\b\u0099\u0001\u0010\u009a\u0001J\u001c\u0010\u009b\u0001\u001a\u00020\u00062\b\u0010/\u001a\u0004\u0018\u00010$H\u0007¢\u0006\u0006\b\u009b\u0001\u0010\u009c\u0001J\u001c\u0010\u009d\u0001\u001a\u00020\u00062\b\u0010/\u001a\u0004\u0018\u00010$H\u0007¢\u0006\u0006\b\u009d\u0001\u0010\u009c\u0001J\u001c\u0010\u009e\u0001\u001a\u00020\u00062\b\u0010/\u001a\u0004\u0018\u00010$H\u0007¢\u0006\u0006\b\u009e\u0001\u0010\u009c\u0001J\u001c\u0010¡\u0001\u001a\u00030 \u00012\u0007\u0010\u009f\u0001\u001a\u00020$H\u0007¢\u0006\u0006\b¡\u0001\u0010¢\u0001J3\u0010¥\u0001\u001a\u0005\u0018\u00010£\u00012\b\u00102\u001a\u0004\u0018\u00010\"2\b\u0010\u0010\u001a\u0004\u0018\u00010\t2\b\u0010¤\u0001\u001a\u00030£\u0001H\u0007¢\u0006\u0006\b¥\u0001\u0010¦\u0001J6\u0010©\u0001\u001a\u00020,2\b\u0010¨\u0001\u001a\u00030§\u00012\u0018\u0010v\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010CH\u0007¢\u0006\u0006\b©\u0001\u0010ª\u0001J.\u0010«\u0001\u001a\u0014\u0012\u0006\u0012\u0004\u0018\u00010\t\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010C2\b\u0010¨\u0001\u001a\u00030§\u0001H\u0007¢\u0006\u0006\b«\u0001\u0010¬\u0001J2\u0010\u00ad\u0001\u001a\u00020,2\b\u0010¨\u0001\u001a\u00030§\u00012\u0014\u0010v\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010CH\u0007¢\u0006\u0006\b\u00ad\u0001\u0010ª\u0001J*\u0010®\u0001\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t\u0018\u00010C2\b\u0010¨\u0001\u001a\u00030§\u0001H\u0007¢\u0006\u0006\b®\u0001\u0010¬\u0001J\u001e\u0010±\u0001\u001a\u00020\u00062\n\u0010°\u0001\u001a\u0005\u0018\u00010¯\u0001H\u0007¢\u0006\u0006\b±\u0001\u0010²\u0001J\u001c\u0010´\u0001\u001a\u00020\t2\t\u0010³\u0001\u001a\u0004\u0018\u00010\tH\u0007¢\u0006\u0005\b´\u0001\u0010\u0012J%\u0010¸\u0001\u001a\u00020,2\u0007\u0010µ\u0001\u001a\u00020\t2\b\u0010·\u0001\u001a\u00030¶\u0001H\u0007¢\u0006\u0006\b¸\u0001\u0010¹\u0001J\u001d\u0010º\u0001\u001a\u0004\u0018\u00010A2\u0007\u0010µ\u0001\u001a\u00020\tH\u0007¢\u0006\u0006\bº\u0001\u0010»\u0001J\u001c\u0010½\u0001\u001a\u00030¼\u00012\u0007\u0010µ\u0001\u001a\u00020\tH\u0002¢\u0006\u0006\b½\u0001\u0010¾\u0001J\u001c\u0010À\u0001\u001a\u00020\t2\t\u0010¿\u0001\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0005\bÀ\u0001\u0010\u0012J\u0014\u0010Á\u0001\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0006\bÁ\u0001\u0010\u0084\u0001J\u0012\u0010Â\u0001\u001a\u00020YH\u0002¢\u0006\u0006\bÂ\u0001\u0010Ã\u0001J\u001a\u0010Ä\u0001\u001a\u00020,2\u0007\u0010\u0085\u0001\u001a\u00020=H\u0002¢\u0006\u0005\bÄ\u0001\u0010`J\u0011\u0010Å\u0001\u001a\u00020,H\u0002¢\u0006\u0005\bÅ\u0001\u0010\u0003J\u001a\u0010Æ\u0001\u001a\u00020,2\u0007\u0010\u0085\u0001\u001a\u00020=H\u0002¢\u0006\u0005\bÆ\u0001\u0010`J\u0012\u0010Ç\u0001\u001a\u00020\u0006H\u0002¢\u0006\u0006\bÇ\u0001\u0010È\u0001J\u0011\u0010É\u0001\u001a\u00020,H\u0002¢\u0006\u0005\bÉ\u0001\u0010\u0003J\u0011\u0010Ê\u0001\u001a\u00020,H\u0002¢\u0006\u0005\bÊ\u0001\u0010\u0003J\u001c\u0010Ì\u0001\u001a\u00030 \u00012\u0007\u0010\u0014\u001a\u00030Ë\u0001H\u0002¢\u0006\u0006\bÌ\u0001\u0010Í\u0001J4\u0010Î\u0001\u001a\u00020,2\u0006\u0010|\u001a\u00020A2\u0006\u0010~\u001a\u00020}2\b\u0010\u007f\u001a\u0004\u0018\u00010\t2\u0006\u0010>\u001a\u00020=H\u0002¢\u0006\u0006\bÎ\u0001\u0010Ï\u0001J*\u0010Ð\u0001\u001a\u00020,2\u0006\u0010|\u001a\u00020A2\u0006\u0010~\u001a\u00020}2\u0006\u0010>\u001a\u00020=H\u0002¢\u0006\u0006\bÐ\u0001\u0010Ñ\u0001J\u001a\u0010Ò\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0002¢\u0006\u0006\bÒ\u0001\u0010Ó\u0001J\u001b\u0010Õ\u0001\u001a\u00020\t2\u0007\u0010Ô\u0001\u001a\u00020YH\u0007¢\u0006\u0006\bÕ\u0001\u0010Ö\u0001J\u001a\u0010×\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0006\b×\u0001\u0010Ó\u0001J\u001a\u0010Ø\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0006\bØ\u0001\u0010Ó\u0001J\u001a\u0010Ù\u0001\u001a\u00020\u00062\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0006\bÙ\u0001\u0010Ó\u0001J\u001e\u0010Ü\u0001\u001a\u00020,2\n\u0010Û\u0001\u001a\u0005\u0018\u00010Ú\u0001H\u0007¢\u0006\u0006\bÜ\u0001\u0010Ý\u0001J\u0019\u0010Þ\u0001\u001a\u00020\t2\u0006\u0010>\u001a\u00020=H\u0007¢\u0006\u0005\bÞ\u0001\u0010@R\u0019\u0010á\u0001\u001a\u00020Y8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bß\u0001\u0010à\u0001R\u001a\u0010ä\u0001\u001a\u00030 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bâ\u0001\u0010ã\u0001R\u001a\u0010å\u0001\u001a\u00030 \u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\bÎ\u0001\u0010ã\u0001R*\u0010ê\u0001\u001a\u00030 \u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bÐ\u0001\u0010ã\u0001\u001a\u0006\bæ\u0001\u0010ç\u0001\"\u0006\bè\u0001\u0010é\u0001R\u0018\u0010ì\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bp\u0010ë\u0001R)\u0010ð\u0001\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0018\n\u0006\bº\u0001\u0010ë\u0001\u001a\u0006\bí\u0001\u0010\u0084\u0001\"\u0006\bî\u0001\u0010ï\u0001R(\u0010ó\u0001\u001a\u00020\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b%\u0010ë\u0001\u001a\u0006\bñ\u0001\u0010\u0084\u0001\"\u0006\bò\u0001\u0010ï\u0001R*\u0010ö\u0001\u001a\u0004\u0018\u00010\t8\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b]\u0010ë\u0001\u001a\u0006\bô\u0001\u0010\u0084\u0001\"\u0006\bõ\u0001\u0010ï\u0001R+\u0010ý\u0001\u001a\u0005\u0018\u00010÷\u00018\u0006@\u0006X\u0086\u000e¢\u0006\u0017\n\u0005\b_\u0010ø\u0001\u001a\u0006\bù\u0001\u0010ú\u0001\"\u0006\bû\u0001\u0010ü\u0001R\u0017\u0010ÿ\u0001\u001a\u0005\u0018\u00010÷\u00018G¢\u0006\b\u001a\u0006\bþ\u0001\u0010ú\u0001R\u0015\u0010\u0081\u0002\u001a\u00030÷\u00018G¢\u0006\b\u001a\u0006\b\u0080\u0002\u0010ú\u0001R\u001e\u0010\u0084\u0002\u001a\u00020\u00068FX\u0087\u0004¢\u0006\u000f\u0012\u0005\b\u0083\u0002\u0010\u0003\u001a\u0006\b\u0082\u0002\u0010È\u0001R\u0016\u0010\u0087\u0002\u001a\u0004\u0018\u00010A8G¢\u0006\b\u001a\u0006\b\u0085\u0002\u0010\u0086\u0002R\u0014\u0010\u0089\u0002\u001a\u00020\u00068G¢\u0006\b\u001a\u0006\b\u0088\u0002\u0010È\u0001¨\u0006\u008b\u0002"}, d2 = {"Lcom/facebook/internal/Utility;", "", "<init>", "()V", "", "c", "", "Illllllllllllllllllllllllllll", "(Ljava/util/Collection;)Z", "", CmcdData.Factory.STREAMING_FORMAT_SS, "Kk", "(Ljava/lang/String;)Z", "valueIfNullOrEmpty", "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "key", "Illlllllllllllllllll", "(Ljava/lang/String;)Ljava/lang/String;", "", "bytes", "IIlllllllll", "([B)Ljava/lang/String;", "IIllllllll", "algorithm", "Kkkkkkkkkkkkk", "Kkkkkkkkkkkk", "(Ljava/lang/String;[B)Ljava/lang/String;", "Ljava/security/MessageDigest;", "hash", "Kkkkkkkkkkkkkk", "(Ljava/security/MessageDigest;[B)Ljava/lang/String;", "authority", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Landroid/os/Bundle;", "parameters", "Landroid/net/Uri;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;", "queryString", "Illlllllllllllllll", "(Ljava/lang/String;)Landroid/os/Bundle;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "value", "", "Illlllllllllllll", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V", "uri", "Illllllllllllll", "(Landroid/os/Bundle;Ljava/lang/String;Landroid/net/Uri;)V", "bundle", "Illllllllllllllll", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)Z", "Ljava/io/Closeable;", "closeable", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/Closeable;)V", "Ljava/net/URLConnection;", "connection", "Wwwwwwwwwwwwwwwww", "(Ljava/net/URLConnection;)V", "Landroid/content/Context;", "context", "Kkkkkkkkkkkkkkkkkkkkkk", "(Landroid/content/Context;)Ljava/lang/String;", "Lorg/json/JSONObject;", "jsonObject", "", "Wwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)Ljava/util/Map;", "Wwwwwwwwwwwwwwwwwww", "Lorg/json/JSONArray;", "jsonArray", "Ljava/util/HashSet;", "Lkotlin/collections/HashSet;", "Wwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Ljava/util/HashSet;", "", "Wwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONArray;)Ljava/util/List;", "nonJSONPropertyKey", "Kkkkkkkkkkkkkkkkk", "(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;", "Ljava/io/InputStream;", "inputStream", "Illllllllllll", "(Ljava/io/InputStream;)Ljava/lang/String;", "Ljava/io/OutputStream;", "outputStream", "", "Wwwwwwwwwwwwwwwwww", "(Ljava/io/InputStream;Ljava/io/OutputStream;)I", "domain", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "tag", "Ljava/lang/Exception;", "Lkotlin/Exception;", "e", "Illlllllllllllllllllllll", "(Ljava/lang/String;Ljava/lang/Exception;)V", NotificationCompat.CATEGORY_MESSAGE, "Illllllllllllllllllllll", "(Ljava/lang/String;Ljava/lang/String;)V", "", "t", "Illlllllllllllllllllll", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V", "T", "a", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Ljava/lang/Object;)Z", "Illlllllllllllllllllllllll", "", "Illllllllllllllllllllllllll", "(Lorg/json/JSONArray;)Ljava/util/Set;", "map", "Illllllllllllllllllll", "(Ljava/util/Map;)Ljava/lang/String;", "str", "Illllllllllllllllllllllll", "(Ljava/lang/String;)Ljava/util/Map;", "params", "Lcom/facebook/internal/AttributionIdentifiers;", "attributionIdentifiers", "anonymousAppDeviceGUID", "limitEventUsage", "Ill", "(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;ZLandroid/content/Context;)V", "Wwwwwwwwwwww", "()Ljava/lang/String;", "appContext", "Il", "(Lorg/json/JSONObject;Landroid/content/Context;)V", "Ljava/lang/Class;", "clazz", "methodName", "", "parameterTypes", "Ljava/lang/reflect/Method;", "Kkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "className", "Kkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;", "receiver", FirebaseAnalytics.Param.METHOD, "args", "Kkkkkkkkkkk", "(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;", "Wwwwwwwwwwwwww", "Kkkkkkkkkkkkkkkk", "(Landroid/net/Uri;)Ljava/lang/String;", "Illlllllllllllllllllllllllll", "(Landroid/net/Uri;)Z", "Kkkkkkk", "Kkkk", "contentUri", "", "Wwwwwwww", "(Landroid/net/Uri;)J", "Ljava/util/Date;", "dateBase", "Wwwwwwwwww", "(Landroid/os/Bundle;Ljava/lang/String;Ljava/util/Date;)Ljava/util/Date;", "Landroid/os/Parcel;", "parcel", "IIllllll", "(Landroid/os/Parcel;Ljava/util/Map;)V", "Illlllllllll", "(Landroid/os/Parcel;)Ljava/util/Map;", "IIlllllll", "Illlllllllllll", "Lcom/facebook/AccessToken;", BidResponsed.KEY_TOKEN, "Kkkkkk", "(Lcom/facebook/AccessToken;)Z", "tokenGraphDomain", "Www", "accessToken", "Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "callback", "Kkkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lorg/json/JSONObject;", "Lcom/facebook/GraphRequest;", "Kkkkkkkkkkkkkkkkkkkkkkkkkk", "(Ljava/lang/String;)Lcom/facebook/GraphRequest;", "graphDomain", "Kkkkkkkkkkkkkkkkkkk", "Wwwwww", "Illlllllll", "()I", "Illllll", "Illlll", "Illlllll", "Wwwwwwwwwwwwwwww", "()Z", "Illllllllll", "Illll", "", "Wwwwwwwwwwwwwwwwwwwwwww", "(D)J", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Landroid/content/Context;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;Lcom/facebook/internal/AttributionIdentifiers;Landroid/content/Context;)V", "Kkk", "(Landroid/content/Context;)Z", SessionDescription.ATTR_LENGTH, "Wwwwwwwwwwwwwww", "(I)Ljava/lang/String;", "Illllllllllllllllll", "Kkkkkkkkk", "Kkkkkkkk", "Ljava/lang/Runnable;", "runnable", "Illl", "(Ljava/lang/Runnable;)V", "Wwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "I", "numCPUCores", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "timestampOfLastCheck", "totalExternalStorageGB", "Wwwwwwwwwww", "()J", "setAvailableExternalStorageGB", "(J)V", "availableExternalStorageGB", "Ljava/lang/String;", "deviceTimezoneAbbreviation", "Wwww", "setDeviceTimeZoneName", "(Ljava/lang/String;)V", "deviceTimeZoneName", "Wwwwwwwww", "setCarrierName", "carrierName", "Kkkkkkkkkkkkkkk", "setVersionName", "versionName", "Ljava/util/Locale;", "Ljava/util/Locale;", "Kkkkkkkkkkkkkkkkkkkkkkk", "()Ljava/util/Locale;", "setLocale", "(Ljava/util/Locale;)V", "locale", "Kkkkkkkkkkkkkkkkkk", "resourceLocale", "Wwwwwww", "currentLocale", "Kkkkkkkkkk", "isAutoAppLinkSetup$annotations", "isAutoAppLinkSetup", "Wwwww", "()Lorg/json/JSONObject;", "dataProcessingOptions", "Kkkkk", "isDataProcessingRestricted", "GraphMeRequestWithCacheCallback", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Utility {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Locale f6804Wwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static int f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Utility INSTANCE = new Utility();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f6811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static long f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = -1;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = "";
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6806Wwwwwwwwwwwwwwwwwwwwwwwwwwww = "NoCarrier";
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static String f6805Wwwwwwwwwwwwwwwwwwwwwwwwwww = "";

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;", "", "Lorg/json/JSONObject;", "userInfo", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lorg/json/JSONObject;)V", "Lcom/facebook/FacebookException;", "error", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/FacebookException;)V", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public interface GraphMeRequestWithCacheCallback {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable FacebookException facebookException);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable JSONObject jSONObject);
    }

    @JvmStatic
    public static final void IIllllll(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    @JvmStatic
    public static final void IIlllllll(@NotNull Parcel parcel, @Nullable Map<String, String> map) {
        if (map == null) {
            parcel.writeInt(-1);
            return;
        }
        parcel.writeInt(map.size());
        for (Map.Entry<String, String> entry : map.entrySet()) {
            parcel.writeString(entry.getKey());
            parcel.writeString(entry.getValue());
        }
    }

    @JvmStatic
    @Nullable
    public static final String IIllllllll(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return INSTANCE.Kkkkkkkkkkkkk("SHA-256", str);
    }

    @JvmStatic
    @Nullable
    public static final String IIlllllllll(@NotNull byte[] bArr) {
        return INSTANCE.Kkkkkkkkkkkk(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1, bArr);
    }

    @JvmStatic
    public static final void Il(@NotNull JSONObject jSONObject, @NotNull Context context) throws JSONException {
        Locale locale;
        String language;
        int i;
        int i2;
        Display display;
        DisplayManager displayManager;
        String country;
        PackageInfo packageInfo;
        JSONArray jSONArray = new JSONArray();
        jSONArray.put("a2");
        INSTANCE.Illllll(context);
        String packageName = context.getPackageName();
        int i3 = 0;
        int i4 = -1;
        try {
            packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (packageInfo == null) {
            return;
        }
        i4 = packageInfo.versionCode;
        f6805Wwwwwwwwwwwwwwwwwwwwwwwwwww = packageInfo.versionName;
        jSONArray.put(packageName);
        jSONArray.put(i4);
        jSONArray.put(f6805Wwwwwwwwwwwwwwwwwwwwwwwwwww);
        jSONArray.put(Build.VERSION.RELEASE);
        jSONArray.put(Build.MODEL);
        try {
            locale = context.getResources().getConfiguration().locale;
        } catch (Exception unused2) {
            locale = Locale.getDefault();
        }
        f6804Wwwwwwwwwwwwwwwwwwwwwwwwww = locale;
        StringBuilder sb = new StringBuilder();
        Locale locale2 = f6804Wwwwwwwwwwwwwwwwwwwwwwwwww;
        String str = "";
        if (locale2 == null || (language = locale2.getLanguage()) == null) {
            language = "";
        }
        sb.append(language);
        sb.append('_');
        Locale locale3 = f6804Wwwwwwwwwwwwwwwwwwwwwwwwww;
        if (locale3 != null && (country = locale3.getCountry()) != null) {
            str = country;
        }
        sb.append(str);
        jSONArray.put(sb.toString());
        jSONArray.put(f6808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        jSONArray.put(f6806Wwwwwwwwwwwwwwwwwwwwwwwwwwww);
        double d = FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
        try {
            Object systemService = context.getSystemService(Constants.ScionAnalytics.MessageType.DISPLAY_NOTIFICATION);
            display = null;
            if (systemService instanceof DisplayManager) {
                displayManager = (DisplayManager) systemService;
            } else {
                displayManager = null;
            }
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            }
        } catch (Exception unused3) {
            i = 0;
        }
        if (display != null) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            display.getMetrics(displayMetrics);
            i = displayMetrics.widthPixels;
            try {
                i3 = displayMetrics.heightPixels;
                d = displayMetrics.density;
            } catch (Exception unused4) {
            }
            i2 = i3;
            i3 = i;
            jSONArray.put(i3);
            jSONArray.put(i2);
            jSONArray.put(new DecimalFormat("#.##").format(d));
            jSONArray.put(INSTANCE.Illlllllll());
            jSONArray.put(f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONArray.put(f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONArray.put(f6807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            jSONObject.put("extinfo", jSONArray.toString());
        }
        i2 = 0;
        jSONArray.put(i3);
        jSONArray.put(i2);
        jSONArray.put(new DecimalFormat("#.##").format(d));
        jSONArray.put(INSTANCE.Illlllllll());
        jSONArray.put(f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        jSONArray.put(f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        jSONArray.put(f6807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        jSONObject.put("extinfo", jSONArray.toString());
    }

    @JvmStatic
    public static final void Ill(@NotNull JSONObject jSONObject, @Nullable AttributionIdentifiers attributionIdentifiers, @Nullable String str, boolean z, @NotNull Context context) throws JSONException {
        Object Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        FeatureManager featureManager = FeatureManager.INSTANCE;
        FeatureManager.Feature feature = FeatureManager.Feature.ServiceUpdateCompliance;
        if (!FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(feature)) {
            jSONObject.put("anon_id", str);
        }
        jSONObject.put("application_tracking_enabled", !z);
        jSONObject.put("advertiser_id_collection_enabled", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwwww());
        if (attributionIdentifiers != null) {
            if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(feature)) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, attributionIdentifiers, str, context);
            }
            if (attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                if (FeatureManager.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(feature)) {
                    INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(jSONObject, attributionIdentifiers, context);
                } else {
                    jSONObject.put("attribution", attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwww());
                }
            }
            if (attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                jSONObject.put("advertiser_id", attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwwwww());
                jSONObject.put("advertiser_tracking_enabled", !attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwww());
            }
            if (!attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwww()) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = UserDataStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() != 0) {
                    jSONObject.put("ud", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                }
            }
            if (attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
                jSONObject.put("installer_package", attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwwww());
            }
        }
        AppLinkManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AppLinkManager.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = null;
        } else {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww("campaign_ids");
        }
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            jSONObject.put("campaign_ids", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
    }

    @JvmStatic
    public static final void Illl(@Nullable Runnable runnable) {
        try {
            FacebookSdk.Wwwwwwwwwwwwww().execute(runnable);
        } catch (Exception unused) {
        }
    }

    public static final boolean Illllllll(File file, String str) {
        return Pattern.matches("cpu[0-9]+", str);
    }

    @JvmStatic
    @Nullable
    public static final Map<String, String> Illlllllllll(@NotNull Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (readInt > 0) {
            int i = 0;
            do {
                i++;
                hashMap.put(parcel.readString(), parcel.readString());
            } while (i < readInt);
            return hashMap;
        }
        return hashMap;
    }

    @JvmStatic
    @NotNull
    public static final String Illllllllllll(@Nullable InputStream inputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        Throwable th;
        InputStreamReader inputStreamReader;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
            try {
                inputStreamReader = new InputStreamReader(bufferedInputStream);
                try {
                    StringBuilder sb = new StringBuilder();
                    char[] cArr = new char[2048];
                    while (true) {
                        int read = inputStreamReader.read(cArr);
                        if (read != -1) {
                            sb.append(cArr, 0, read);
                        } else {
                            String sb2 = sb.toString();
                            Wwwwwwwwwwwwwwwwwwwwwwwww(bufferedInputStream);
                            Wwwwwwwwwwwwwwwwwwwwwwwww(inputStreamReader);
                            return sb2;
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    Wwwwwwwwwwwwwwwwwwwwwwwww(bufferedInputStream);
                    Wwwwwwwwwwwwwwwwwwwwwwwww(inputStreamReader);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStreamReader = null;
            }
        } catch (Throwable th4) {
            bufferedInputStream = null;
            th = th4;
            inputStreamReader = null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Map<String, String> Illlllllllllll(@NotNull Parcel parcel) {
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        HashMap hashMap = new HashMap();
        if (readInt > 0) {
            int i = 0;
            do {
                i++;
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                if (readString != null && readString2 != null) {
                    hashMap.put(readString, readString2);
                    continue;
                }
            } while (i < readInt);
            return hashMap;
        }
        return hashMap;
    }

    @JvmStatic
    public static final void Illllllllllllll(@NotNull Bundle bundle, @Nullable String str, @Nullable Uri uri) {
        if (uri != null) {
            Illlllllllllllll(bundle, str, uri.toString());
        }
    }

    @JvmStatic
    public static final void Illlllllllllllll(@NotNull Bundle bundle, @Nullable String str, @Nullable String str2) {
        if (!Kk(str2)) {
            bundle.putString(str, str2);
        }
    }

    @JvmStatic
    public static final boolean Illllllllllllllll(@NotNull Bundle bundle, @Nullable String str, @Nullable Object obj) {
        if (obj == null) {
            bundle.remove(str);
            return true;
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
            return true;
        } else if (obj instanceof boolean[]) {
            bundle.putBooleanArray(str, (boolean[]) obj);
            return true;
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Number) obj).doubleValue());
            return true;
        } else if (obj instanceof double[]) {
            bundle.putDoubleArray(str, (double[]) obj);
            return true;
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Number) obj).intValue());
            return true;
        } else if (obj instanceof int[]) {
            bundle.putIntArray(str, (int[]) obj);
            return true;
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Number) obj).longValue());
            return true;
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
            return true;
        } else if (obj instanceof String) {
            bundle.putString(str, (String) obj);
            return true;
        } else if (obj instanceof JSONArray) {
            bundle.putString(str, ((JSONArray) obj).toString());
            return true;
        } else if (obj instanceof JSONObject) {
            bundle.putString(str, ((JSONObject) obj).toString());
            return true;
        } else {
            return false;
        }
    }

    @JvmStatic
    @NotNull
    public static final Bundle Illlllllllllllllll(@Nullable String str) {
        Bundle bundle = new Bundle();
        if (!Kk(str)) {
            if (str != null) {
                Object[] array = StringsKt.split$default((CharSequence) str, new String[]{"&"}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (array != null) {
                    String[] strArr = (String[]) array;
                    int length = strArr.length;
                    int i = 0;
                    while (i < length) {
                        int i2 = i + 1;
                        Object[] array2 = StringsKt.split$default((CharSequence) strArr[i], new String[]{"="}, false, 0, 6, (Object) null).toArray(new String[0]);
                        if (array2 != null) {
                            String[] strArr2 = (String[]) array2;
                            try {
                                if (strArr2.length == 2) {
                                    bundle.putString(URLDecoder.decode(strArr2[0], "UTF-8"), URLDecoder.decode(strArr2[1], "UTF-8"));
                                } else if (strArr2.length == 1) {
                                    bundle.putString(URLDecoder.decode(strArr2[0], "UTF-8"), "");
                                }
                            } catch (UnsupportedEncodingException e) {
                                Illlllllllllllllllllllll("FacebookSDK", e);
                            }
                            i = i2;
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                        }
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            } else {
                throw new IllegalStateException("Required value was null.");
            }
        }
        return bundle;
    }

    @JvmStatic
    public static final boolean Illllllllllllllllll(@NotNull Context context) {
        return Kkkkkkkkk(context);
    }

    @JvmStatic
    @Nullable
    public static final String Illlllllllllllllllll(@NotNull String str) {
        return INSTANCE.Kkkkkkkkkkkkk(SameMD5.TAG, str);
    }

    @JvmStatic
    @NotNull
    public static final String Illllllllllllllllllll(@NotNull Map<String, String> map) {
        if (map.isEmpty()) {
            return "";
        }
        try {
            JSONObject jSONObject = new JSONObject();
            for (Map.Entry<String, String> entry : map.entrySet()) {
                jSONObject.put(entry.getKey(), entry.getValue());
            }
            return jSONObject.toString();
        } catch (JSONException unused) {
            return "";
        }
    }

    @JvmStatic
    public static final void Illlllllllllllllllllll(@Nullable String str, @Nullable String str2, @Nullable Throwable th) {
        if (FacebookSdk.Wwww()) {
            Kk(str);
        }
    }

    @JvmStatic
    public static final void Illllllllllllllllllllll(@Nullable String str, @Nullable String str2) {
        FacebookSdk.Wwww();
    }

    @JvmStatic
    public static final void Illlllllllllllllllllllll(@Nullable String str, @Nullable Exception exc) {
        if (FacebookSdk.Wwww() && str != null && exc != null) {
            exc.getMessage();
        }
    }

    @JvmStatic
    @NotNull
    public static final Map<String, String> Illllllllllllllllllllllll(@NotNull String str) {
        if (str.length() == 0) {
            return new HashMap();
        }
        try {
            HashMap hashMap = new HashMap();
            JSONObject jSONObject = new JSONObject(str);
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                hashMap.put(next, jSONObject.getString(next));
            }
            return hashMap;
        } catch (JSONException unused) {
            return new HashMap();
        }
    }

    @JvmStatic
    @NotNull
    public static final List<String> Illlllllllllllllllllllllll(@NotNull JSONArray jSONArray) throws JSONException {
        ArrayList arrayList = new ArrayList();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                arrayList.add(jSONArray.getString(i));
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return arrayList;
    }

    @JvmStatic
    @NotNull
    public static final Set<String> Illllllllllllllllllllllllll(@NotNull JSONArray jSONArray) throws JSONException {
        HashSet hashSet = new HashSet();
        int length = jSONArray.length();
        if (length > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                hashSet.add(jSONArray.getString(i));
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashSet;
    }

    @JvmStatic
    public static final boolean Illlllllllllllllllllllllllll(@Nullable Uri uri) {
        if (uri != null) {
            if (StringsKt.equals("http", uri.getScheme(), true) || StringsKt.equals("https", uri.getScheme(), true) || StringsKt.equals("fbstaging", uri.getScheme(), true)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @JvmStatic
    public static final boolean Illllllllllllllllllllllllllll(@Nullable Collection<?> collection) {
        if (collection != null && !collection.isEmpty()) {
            return false;
        }
        return true;
    }

    @JvmStatic
    public static final boolean Kk(@Nullable String str) {
        if (str != null && str.length() != 0) {
            return false;
        }
        return true;
    }

    @JvmStatic
    public static final boolean Kkkk(@Nullable Uri uri) {
        if (uri != null && StringsKt.equals("file", uri.getScheme(), true)) {
            return true;
        }
        return false;
    }

    @JvmStatic
    public static final boolean Kkkkk() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utility.class)) {
            return false;
        }
        try {
            JSONObject Wwwww2 = Wwwww();
            if (Wwwww2 == null) {
                return false;
            }
            try {
                JSONArray jSONArray = Wwwww2.getJSONArray("data_processing_options");
                int length = jSONArray.length();
                if (length > 0) {
                    int i = 0;
                    while (true) {
                        int i2 = i + 1;
                        if (Intrinsics.areEqual(jSONArray.getString(i).toLowerCase(), "ldu")) {
                            return true;
                        }
                        if (i2 >= length) {
                            break;
                        }
                        i = i2;
                    }
                }
            } catch (Exception unused) {
            }
            return false;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Utility.class);
            return false;
        }
    }

    @JvmStatic
    public static final boolean Kkkkkk(@Nullable AccessToken accessToken) {
        if (accessToken != null && Intrinsics.areEqual(accessToken, AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww())) {
            return true;
        }
        return false;
    }

    @JvmStatic
    public static final boolean Kkkkkkk(@Nullable Uri uri) {
        if (uri != null && StringsKt.equals("content", uri.getScheme(), true)) {
            return true;
        }
        return false;
    }

    @JvmStatic
    public static final boolean Kkkkkkkk(@NotNull Context context) {
        if (Build.VERSION.SDK_INT >= 27) {
            return context.getPackageManager().hasSystemFeature("android.hardware.type.pc");
        }
        String str = Build.DEVICE;
        if (str != null && new Regex(".+_cheets|cheets_.+").matches(str)) {
            return true;
        }
        return false;
    }

    @JvmStatic
    public static final boolean Kkkkkkkkk(@NotNull Context context) {
        AutofillManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        boolean isAutofillSupported;
        boolean isEnabled;
        if (Build.VERSION.SDK_INT >= 26 && (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSystemService(Wwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()))) != null) {
            isAutofillSupported = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isAutofillSupported();
            if (isAutofillSupported) {
                isEnabled = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.isEnabled();
                if (isEnabled) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean Kkkkkkkkkk() {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            intent.setData(Uri.parse(String.format("fb%s://applinks", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww()}, 1))));
            Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
            PackageManager packageManager = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager();
            String packageName = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName();
            for (ResolveInfo resolveInfo : packageManager.queryIntentActivities(intent, 65536)) {
                if (Intrinsics.areEqual(packageName, resolveInfo.activityInfo.packageName)) {
                    return true;
                }
            }
        } catch (Exception unused) {
        }
        return false;
    }

    @JvmStatic
    @Nullable
    public static final Object Kkkkkkkkkkk(@Nullable Object obj, @NotNull Method method, @NotNull Object... objArr) {
        try {
            return method.invoke(obj, Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException | InvocationTargetException unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final String Kkkkkkkkkkkkkkkk(@Nullable Uri uri) {
        if (uri == null) {
            return null;
        }
        return uri.toString();
    }

    @JvmStatic
    @Nullable
    public static final Object Kkkkkkkkkkkkkkkkk(@NotNull JSONObject jSONObject, @Nullable String str, @Nullable String str2) throws JSONException {
        Object opt = jSONObject.opt(str);
        if (opt != null && (opt instanceof String)) {
            opt = new JSONTokener((String) opt).nextValue();
        }
        if (opt != null && !(opt instanceof JSONObject) && !(opt instanceof JSONArray)) {
            if (str2 != null) {
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.putOpt(str2, opt);
                return jSONObject2;
            }
            throw new FacebookException("Got an unexpected non-JSON object.");
        }
        return opt;
    }

    @JvmStatic
    @Nullable
    public static final Locale Kkkkkkkkkkkkkkkkkk() {
        try {
            return FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getResources().getConfiguration().locale;
        } catch (Exception unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Method Kkkkkkkkkkkkkkkkkkkk(@NotNull String str, @NotNull String str2, @NotNull Class<?>... clsArr) {
        try {
            return Kkkkkkkkkkkkkkkkkkkkk(Class.forName(str), str2, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    @JvmStatic
    @Nullable
    public static final Method Kkkkkkkkkkkkkkkkkkkkk(@NotNull Class<?> cls, @NotNull String str, @NotNull Class<?>... clsArr) {
        try {
            return cls.getMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Kkkkkkkkkkkkkkkkkkkkkk(@Nullable Context context) {
        Validate.Wwwwwwwwwwwwwwwwwwwwww(context, "context");
        return FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
    }

    public static final void Kkkkkkkkkkkkkkkkkkkkkkkk(GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback, String str, GraphResponse graphResponse) {
        if (graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            graphMeRequestWithCacheCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return;
        }
        ProfileInformationCache profileInformationCache = ProfileInformationCache.INSTANCE;
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            ProfileInformationCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            graphMeRequestWithCacheCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(graphResponse.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return;
        }
        throw new IllegalStateException("Required value was null.");
    }

    @JvmStatic
    public static final void Kkkkkkkkkkkkkkkkkkkkkkkkk(@NotNull final String str, @NotNull final GraphMeRequestWithCacheCallback graphMeRequestWithCacheCallback) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ProfileInformationCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            graphMeRequestWithCacheCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return;
        }
        GraphRequest.Callback callback = new GraphRequest.Callback() { // from class: com.facebook.internal.Wwwwwwwwwwwwwwww
            @Override // com.facebook.GraphRequest.Callback
            public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(GraphResponse graphResponse) {
                Utility.Kkkkkkkkkkkkkkkkkkkkkkkk(Utility.GraphMeRequestWithCacheCallback.this, str, graphResponse);
            }
        };
        GraphRequest Kkkkkkkkkkkkkkkkkkkkkkkkkk2 = INSTANCE.Kkkkkkkkkkkkkkkkkkkkkkkkkk(str);
        Kkkkkkkkkkkkkkkkkkkkkkkkkk2.Wwww(callback);
        Kkkkkkkkkkkkkkkkkkkkkkkkkk2.Wwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    @NotNull
    public static final String Www(@Nullable String str) {
        String Wwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwww();
        if (str != null) {
            if (Intrinsics.areEqual(str, "gaming")) {
                return StringsKt.replace$default(Wwwwwwwwwwwww2, "facebook.com", "fb.gg", false, 4, (Object) null);
            }
            if (Intrinsics.areEqual(str, "instagram")) {
                return StringsKt.replace$default(Wwwwwwwwwwwww2, "facebook.com", "instagram.com", false, 4, (Object) null);
            }
        }
        return Wwwwwwwwwwwww2;
    }

    @JvmStatic
    @Nullable
    public static final JSONObject Wwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Utility.class)) {
            return null;
        }
        try {
            String string = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getSharedPreferences("com.facebook.sdk.DataProcessingOptions", 0).getString("data_processing_options", null);
            if (string != null) {
                try {
                    return new JSONObject(string);
                } catch (JSONException unused) {
                }
            }
            return null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, Utility.class);
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final Locale Wwwwwww() {
        Locale Kkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkk();
        if (Kkkkkkkkkkkkkkkkkk2 == null) {
            return Locale.getDefault();
        }
        return Kkkkkkkkkkkkkkkkkk2;
    }

    @JvmStatic
    public static final long Wwwwwwww(@NotNull Uri uri) {
        Cursor cursor = null;
        try {
            cursor = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww().getContentResolver().query(uri, null, null, null, null);
            if (cursor == null) {
                return 0L;
            }
            int columnIndex = cursor.getColumnIndex("_size");
            cursor.moveToFirst();
            long j = cursor.getLong(columnIndex);
            cursor.close();
            return j;
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @JvmStatic
    @Nullable
    public static final Date Wwwwwwwwww(@Nullable Bundle bundle, @Nullable String str, @NotNull Date date) {
        long parseLong;
        if (bundle == null) {
            return null;
        }
        Object obj = bundle.get(str);
        if (obj instanceof Long) {
            parseLong = ((Number) obj).longValue();
        } else if (!(obj instanceof String)) {
            return null;
        } else {
            try {
                parseLong = Long.parseLong((String) obj);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        if (parseLong == 0) {
            return new Date(Long.MAX_VALUE);
        }
        return new Date(date.getTime() + (parseLong * 1000));
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwww() {
        Context Wwwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwww2 == null) {
            return null;
        }
        try {
            PackageInfo packageInfo = Wwwwwwwwwwwwwwwwwwwwwww2.getPackageManager().getPackageInfo(Wwwwwwwwwwwwwwwwwwwwwww2.getPackageName(), 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwww(@NotNull Context context) {
        try {
            String Wwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwww2 != null) {
                return Wwwwwwwwwwwwwwwwwwwww2;
            }
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            int i = applicationInfo.labelRes;
            if (i == 0) {
                return applicationInfo.nonLocalizedLabel.toString();
            }
            return context.getString(i);
        } catch (Exception unused) {
            return "";
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwww(@Nullable Context context) {
        if (context == null) {
            return AbstractJsonLexerKt.NULL;
        }
        if (context == context.getApplicationContext()) {
            return "unknown";
        }
        return context.getClass().getSimpleName();
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwww(int i) {
        return new BigInteger(i * 5, new Random()).toString(32);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwww(@Nullable URLConnection uRLConnection) {
        if (uRLConnection != null && (uRLConnection instanceof HttpURLConnection)) {
            ((HttpURLConnection) uRLConnection).disconnect();
        }
    }

    @JvmStatic
    public static final int Wwwwwwwwwwwwwwwwww(@Nullable InputStream inputStream, @NotNull OutputStream outputStream) throws IOException {
        BufferedInputStream bufferedInputStream;
        BufferedInputStream bufferedInputStream2 = null;
        try {
            bufferedInputStream = new BufferedInputStream(inputStream);
        } catch (Throwable th) {
            th = th;
        }
        try {
            byte[] bArr = new byte[8192];
            int i = 0;
            while (true) {
                int read = bufferedInputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                outputStream.write(bArr, 0, read);
                i += read;
            }
            bufferedInputStream.close();
            if (inputStream == null) {
                return i;
            }
            inputStream.close();
            return i;
        } catch (Throwable th2) {
            th = th2;
            bufferedInputStream2 = bufferedInputStream;
            if (bufferedInputStream2 != null) {
                bufferedInputStream2.close();
            }
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    @JvmStatic
    @NotNull
    public static final Map<String, String> Wwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            String optString = jSONObject.optString(next);
            if (optString != null) {
                hashMap.put(next, optString);
            }
        }
        return hashMap;
    }

    @JvmStatic
    @NotNull
    public static final Map<String, Object> Wwwwwwwwwwwwwwwwwwww(@NotNull JSONObject jSONObject) {
        int length;
        HashMap hashMap = new HashMap();
        JSONArray names = jSONObject.names();
        if (names != null && (length = names.length()) > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                try {
                    String string = names.getString(i);
                    Object obj = jSONObject.get(string);
                    if (obj instanceof JSONObject) {
                        obj = Wwwwwwwwwwwwwwwwwwww((JSONObject) obj);
                    }
                    hashMap.put(string, obj);
                } catch (JSONException unused) {
                }
                if (i2 >= length) {
                    break;
                }
                i = i2;
            }
        }
        return hashMap;
    }

    @JvmStatic
    @NotNull
    public static final List<String> Wwwwwwwwwwwwwwwwwwwww(@NotNull JSONArray jSONArray) {
        try {
            ArrayList arrayList = new ArrayList();
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    arrayList.add(jSONArray.getString(i));
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return arrayList;
        } catch (JSONException unused) {
            return new ArrayList();
        }
    }

    @JvmStatic
    @Nullable
    public static final HashSet<String> Wwwwwwwwwwwwwwwwwwwwww(@Nullable JSONArray jSONArray) {
        if (jSONArray != null && jSONArray.length() != 0) {
            HashSet<String> hashSet = new HashSet<>();
            int length = jSONArray.length();
            if (length > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    hashSet.add(jSONArray.getString(i));
                    if (i2 >= length) {
                        break;
                    }
                    i = i2;
                }
            }
            return hashSet;
        }
        return null;
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2) {
        if (Kk(str)) {
            return str2;
        }
        return str;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException unused) {
            }
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        try {
            Utility utility = INSTANCE;
            utility.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, "facebook.com");
            utility.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, ".facebook.com");
            utility.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, "https://facebook.com");
            utility.Wwwwwwwwwwwwwwwwwwwwwwwwwww(context, "https://.facebook.com");
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    @NotNull
    public static final Uri Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable Bundle bundle) {
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority(str);
        builder.path(str2);
        if (bundle != null) {
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    builder.appendQueryParameter(str3, (String) obj);
                }
            }
        }
        return builder.build();
    }

    @JvmStatic
    @Nullable
    public static final JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        JSONObject Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = ProfileInformationCache.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        GraphResponse Wwwwwwwwwwwwwwwwwwwwwwww2 = INSTANCE.Kkkkkkkkkkkkkkkkkkkkkkkkkk(str).Wwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            return null;
        }
        return Wwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
    }

    @JvmStatic
    public static final <T> boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t, @Nullable T t2) {
        if (t == null) {
            if (t2 == null) {
                return true;
            }
            return false;
        }
        return Intrinsics.areEqual(t, t2);
    }

    public final void Illll() {
        try {
            if (Wwwwwwwwwwwwwwww()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = statFs.getBlockCount() * statFs.getBlockSize();
            }
            f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwww(f6810Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Exception unused) {
        }
    }

    public final void Illlll() {
        try {
            TimeZone timeZone = TimeZone.getDefault();
            f6808Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeZone.getDisplayName(timeZone.inDaylightTime(new Date()), 0);
            f6807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = timeZone.getID();
        } catch (AssertionError | Exception unused) {
        }
    }

    public final void Illllll(Context context) {
        if (f6811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww != -1 && System.currentTimeMillis() - f6811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww < 1800000) {
            return;
        }
        f6811Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis();
        Illlll();
        Illlllll(context);
        Illll();
        Illllllllll();
    }

    public final void Illlllll(Context context) {
        if (Intrinsics.areEqual(f6806Wwwwwwwwwwwwwwwwwwwwwwwwwwww, "NoCarrier")) {
            try {
                Object systemService = context.getSystemService("phone");
                if (systemService != null) {
                    f6806Wwwwwwwwwwwwwwwwwwwwwwwwwwww = ((TelephonyManager) systemService).getNetworkOperatorName();
                    return;
                }
                throw new NullPointerException("null cannot be cast to non-null type android.telephony.TelephonyManager");
            } catch (Exception unused) {
            }
        }
    }

    public final int Illlllllll() {
        int i = f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (i > 0) {
            return i;
        }
        try {
            File[] listFiles = new File("/sys/devices/system/cpu/").listFiles(new FilenameFilter() { // from class: com.facebook.internal.Wwwwwwwwwwwwwww
                @Override // java.io.FilenameFilter
                public final boolean accept(File file, String str) {
                    boolean Illllllll;
                    Illllllll = Utility.Illllllll(file, str);
                    return Illllllll;
                }
            });
            if (listFiles != null) {
                f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = listFiles.length;
            }
        } catch (Exception unused) {
        }
        if (f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww <= 0) {
            f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Math.max(Runtime.getRuntime().availableProcessors(), 1);
        }
        return f6812Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final void Illllllllll() {
        try {
            if (Wwwwwwwwwwwwwwww()) {
                StatFs statFs = new StatFs(Environment.getExternalStorageDirectory().getPath());
                f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = statFs.getAvailableBlocks() * statFs.getBlockSize();
            }
            f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Wwwwwwwwwwwwwwwwwwwwwww(f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        } catch (Exception unused) {
        }
    }

    public final boolean Kkk(Context context) {
        Method Kkkkkkkkkkkkkkkkkkkk2 = Kkkkkkkkkkkkkkkkkkkk("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
        if (Kkkkkkkkkkkkkkkkkkkk2 == null) {
            return false;
        }
        Object Kkkkkkkkkkk2 = Kkkkkkkkkkk(null, Kkkkkkkkkkkkkkkkkkkk2, context);
        if ((Kkkkkkkkkkk2 instanceof Integer) && Intrinsics.areEqual(Kkkkkkkkkkk2, (Object) 0)) {
            return true;
        }
        return false;
    }

    public final String Kkkkkkkkkkkk(String str, byte[] bArr) {
        try {
            return Kkkkkkkkkkkkkk(MessageDigest.getInstance(str), bArr);
        } catch (NoSuchAlgorithmException unused) {
            return null;
        }
    }

    public final String Kkkkkkkkkkkkk(String str, String str2) {
        Charset charset = Charsets.UTF_8;
        if (str2 != null) {
            return Kkkkkkkkkkkk(str, str2.getBytes(charset));
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public final String Kkkkkkkkkkkkkk(MessageDigest messageDigest, byte[] bArr) {
        messageDigest.update(bArr);
        byte[] digest = messageDigest.digest();
        StringBuilder sb = new StringBuilder();
        int length = digest.length;
        int i = 0;
        while (i < length) {
            byte b = digest[i];
            i++;
            sb.append(Integer.toHexString((b >> 4) & 15));
            sb.append(Integer.toHexString(b & Ascii.SI));
        }
        return sb.toString();
    }

    @Nullable
    public final String Kkkkkkkkkkkkkkk() {
        return f6805Wwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Kkkkkkkkkkkkkkkkkkk(String str) {
        if (Intrinsics.areEqual(str, "instagram")) {
            return "id,name,profile_picture";
        }
        return "id,name,first_name,middle_name,last_name";
    }

    @Nullable
    public final Locale Kkkkkkkkkkkkkkkkkkkkkkk() {
        return f6804Wwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final GraphRequest Kkkkkkkkkkkkkkkkkkkkkkkkkk(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("fields", Kkkkkkkkkkkkkkkkkkk(Wwwwww()));
        bundle.putString("access_token", str);
        GraphRequest Wwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwww(null, null);
        Wwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        Wwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpMethod.GET);
        return Wwwwwwwwww2;
    }

    @NotNull
    public final String Wwww() {
        return f6807Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final String Wwwwww() {
        AccessToken Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 = AccessToken.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww() != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwwwwww();
        }
        return "facebook";
    }

    @NotNull
    public final String Wwwwwwwww() {
        return f6806Wwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final long Wwwwwwwwwww() {
        return f6809Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public final boolean Wwwwwwwwwwwwwwww() {
        return Intrinsics.areEqual("mounted", Environment.getExternalStorageState());
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwww(double d) {
        return Math.round(d / 1.073741824E9d);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        int i;
        boolean z;
        CookieSyncManager.createInstance(context).sync();
        CookieManager cookieManager = CookieManager.getInstance();
        String cookie = cookieManager.getCookie(str);
        if (cookie == null) {
            return;
        }
        Object[] array = StringsKt.split$default((CharSequence) cookie, new String[]{";"}, false, 0, 6, (Object) null).toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            int length = strArr.length;
            int i2 = 0;
            while (i2 < length) {
                String str2 = strArr[i2];
                i2++;
                Object[] array2 = StringsKt.split$default((CharSequence) str2, new String[]{"="}, false, 0, 6, (Object) null).toArray(new String[0]);
                if (array2 != null) {
                    String[] strArr2 = (String[]) array2;
                    if (strArr2.length > 0) {
                        String str3 = strArr2[0];
                        int length2 = str3.length() - 1;
                        int i3 = 0;
                        boolean z2 = false;
                        while (i3 <= length2) {
                            if (!z2) {
                                i = i3;
                            } else {
                                i = length2;
                            }
                            if (Intrinsics.compare((int) str3.charAt(i), 32) <= 0) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (!z2) {
                                if (!z) {
                                    z2 = true;
                                } else {
                                    i3++;
                                }
                            } else if (!z) {
                                break;
                            } else {
                                length2--;
                            }
                        }
                        cookieManager.setCookie(str, Intrinsics.stringPlus(str3.subSequence(i3, length2 + 1).toString(), "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"));
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
            }
            cookieManager.removeExpiredCookie();
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && Kkk(context)) {
            if (!attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwww()) {
                jSONObject.put("attribution", attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwww());
                return;
            }
            return;
        }
        jSONObject.put("attribution", attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JSONObject jSONObject, AttributionIdentifiers attributionIdentifiers, String str, Context context) {
        if (Build.VERSION.SDK_INT >= 31 && Kkk(context)) {
            if (!attributionIdentifiers.Wwwwwwwwwwwwwwwwwwwwwww()) {
                jSONObject.put("anon_id", str);
                return;
            }
            return;
        }
        jSONObject.put("anon_id", str);
    }
}
