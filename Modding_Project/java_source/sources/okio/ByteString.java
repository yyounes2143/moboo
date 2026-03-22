package okio;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.common.base.Ascii;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.mbridge.msdk.foundation.tools.SameMD5;
import com.unity3d.ads.core.data.datasource.AndroidStaticDeviceInfoDataSource;
import com.unity3d.services.ads.gmascar.utils.ScarConstants;
import io.flutter.plugin.editing.SpellCheckPlugin;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.collections.ArraysKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0019\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010\u0000\n\u0002\b\u0017\b\u0016\u0018\u0000 x2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00000\u0002:\u0001xB\u0011\b\u0000\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0013H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0017\u0010\u0012J\r\u0010\u0018\u001a\u00020\u0000¢\u0006\u0004\b\u0018\u0010\u0019J\r\u0010\u001a\u001a\u00020\u0000¢\u0006\u0004\b\u001a\u0010\u0019J\r\u0010\u001b\u001a\u00020\u0000¢\u0006\u0004\b\u001b\u0010\u0019J\r\u0010\u001c\u001a\u00020\u0000¢\u0006\u0004\b\u001c\u0010\u0019J\u0017\u0010 \u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u0010H\u0010¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\"\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0016¢\u0006\u0004\b\"\u0010#J\u0017\u0010$\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0016¢\u0006\u0004\b$\u0010#J\u0017\u0010%\u001a\u00020\u00002\u0006\u0010!\u001a\u00020\u0000H\u0016¢\u0006\u0004\b%\u0010#J\u001f\u0010(\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u00102\u0006\u0010!\u001a\u00020\u0000H\u0010¢\u0006\u0004\b&\u0010'J\u000f\u0010)\u001a\u00020\u0010H\u0016¢\u0006\u0004\b)\u0010\u0012J\u000f\u0010*\u001a\u00020\u0010H\u0016¢\u0006\u0004\b*\u0010\u0012J\u000f\u0010+\u001a\u00020\u0000H\u0016¢\u0006\u0004\b+\u0010\u0019J\u000f\u0010,\u001a\u00020\u0000H\u0016¢\u0006\u0004\b,\u0010\u0019J#\u00100\u001a\u00020\u00002\b\b\u0002\u0010.\u001a\u00020-2\b\b\u0002\u0010/\u001a\u00020-H\u0017¢\u0006\u0004\b0\u00101J\u0017\u00106\u001a\u0002032\u0006\u00102\u001a\u00020-H\u0010¢\u0006\u0004\b4\u00105J\u0018\u00109\u001a\u0002032\u0006\u00107\u001a\u00020-H\u0087\u0002¢\u0006\u0004\b8\u00105J\u000f\u0010<\u001a\u00020-H\u0010¢\u0006\u0004\b:\u0010;J\u000f\u0010=\u001a\u00020\u0003H\u0016¢\u0006\u0004\b=\u0010>J\u000f\u0010@\u001a\u00020\u0003H\u0010¢\u0006\u0004\b?\u0010>J\u000f\u0010B\u001a\u00020AH\u0016¢\u0006\u0004\bB\u0010CJ\u0017\u0010E\u001a\u00020\t2\u0006\u0010\r\u001a\u00020DH\u0016¢\u0006\u0004\bE\u0010FJ'\u0010E\u001a\u00020\t2\u0006\u0010H\u001a\u00020G2\u0006\u0010I\u001a\u00020-2\u0006\u0010J\u001a\u00020-H\u0010¢\u0006\u0004\bK\u0010LJ/\u0010P\u001a\u00020O2\u0006\u0010I\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00002\u0006\u0010N\u001a\u00020-2\u0006\u0010J\u001a\u00020-H\u0016¢\u0006\u0004\bP\u0010QJ/\u0010P\u001a\u00020O2\u0006\u0010I\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00032\u0006\u0010N\u001a\u00020-2\u0006\u0010J\u001a\u00020-H\u0016¢\u0006\u0004\bP\u0010RJ3\u0010U\u001a\u00020\t2\b\b\u0002\u0010I\u001a\u00020-2\u0006\u0010S\u001a\u00020\u00032\b\b\u0002\u0010T\u001a\u00020-2\u0006\u0010J\u001a\u00020-H\u0016¢\u0006\u0004\bU\u0010VJ\u0015\u0010X\u001a\u00020O2\u0006\u0010W\u001a\u00020\u0000¢\u0006\u0004\bX\u0010YJ\u0015\u0010X\u001a\u00020O2\u0006\u0010W\u001a\u00020\u0003¢\u0006\u0004\bX\u0010ZJ\u0015\u0010\\\u001a\u00020O2\u0006\u0010[\u001a\u00020\u0000¢\u0006\u0004\b\\\u0010YJ\u0015\u0010\\\u001a\u00020O2\u0006\u0010[\u001a\u00020\u0003¢\u0006\u0004\b\\\u0010ZJ!\u0010^\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00002\b\b\u0002\u0010]\u001a\u00020-H\u0007¢\u0006\u0004\b^\u0010_J!\u0010^\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00032\b\b\u0002\u0010]\u001a\u00020-H\u0017¢\u0006\u0004\b^\u0010`J!\u0010a\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00002\b\b\u0002\u0010]\u001a\u00020-H\u0007¢\u0006\u0004\ba\u0010_J!\u0010a\u001a\u00020-2\u0006\u0010M\u001a\u00020\u00032\b\b\u0002\u0010]\u001a\u00020-H\u0017¢\u0006\u0004\ba\u0010`J\u001a\u0010c\u001a\u00020O2\b\u0010M\u001a\u0004\u0018\u00010bH\u0096\u0002¢\u0006\u0004\bc\u0010dJ\u000f\u0010e\u001a\u00020-H\u0016¢\u0006\u0004\be\u0010;J\u0018\u0010f\u001a\u00020-2\u0006\u0010M\u001a\u00020\u0000H\u0096\u0002¢\u0006\u0004\bf\u0010gJ\u000f\u0010h\u001a\u00020\u0010H\u0016¢\u0006\u0004\bh\u0010\u0012J\u0017\u00108\u001a\u0002032\u0006\u00107\u001a\u00020-H\u0007¢\u0006\u0004\bi\u00105J\u000f\u0010k\u001a\u00020-H\u0007¢\u0006\u0004\bj\u0010;R\u001a\u0010\u0004\u001a\u00020\u00038\u0000X\u0080\u0004¢\u0006\f\n\u0004\b\u0004\u0010l\u001a\u0004\bm\u0010>R\"\u0010e\u001a\u00020-8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bn\u0010o\u001a\u0004\bp\u0010;\"\u0004\bq\u0010rR$\u0010\u0011\u001a\u0004\u0018\u00010\u00108\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bs\u0010t\u001a\u0004\bu\u0010\u0012\"\u0004\bv\u0010wR\u0011\u0010k\u001a\u00020-8G¢\u0006\u0006\u001a\u0004\bk\u0010;¨\u0006y"}, d2 = {"Lokio/ByteString;", "Ljava/io/Serializable;", "", "", "data", "<init>", "([B)V", "Ljava/io/ObjectInputStream;", ScarConstants.IN_SIGNAL_KEY, "", "readObject", "(Ljava/io/ObjectInputStream;)V", "Ljava/io/ObjectOutputStream;", "out", "writeObject", "(Ljava/io/ObjectOutputStream;)V", "", "utf8", "()Ljava/lang/String;", "Ljava/nio/charset/Charset;", "charset", TypedValues.Custom.S_STRING, "(Ljava/nio/charset/Charset;)Ljava/lang/String;", "base64", "md5", "()Lokio/ByteString;", "sha1", "sha256", "sha512", "algorithm", "digest$okio", "(Ljava/lang/String;)Lokio/ByteString;", "digest", "key", "hmacSha1", "(Lokio/ByteString;)Lokio/ByteString;", "hmacSha256", "hmacSha512", "hmac$okio", "(Ljava/lang/String;Lokio/ByteString;)Lokio/ByteString;", "hmac", "base64Url", "hex", "toAsciiLowercase", "toAsciiUppercase", "", "beginIndex", SpellCheckPlugin.END_INDEX_KEY, "substring", "(II)Lokio/ByteString;", "pos", "", "internalGet$okio", "(I)B", "internalGet", FirebaseAnalytics.Param.INDEX, "getByte", "get", "getSize$okio", "()I", "getSize", "toByteArray", "()[B", "internalArray$okio", "internalArray", "Ljava/nio/ByteBuffer;", "asByteBuffer", "()Ljava/nio/ByteBuffer;", "Ljava/io/OutputStream;", "write", "(Ljava/io/OutputStream;)V", "Lokio/Buffer;", "buffer", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "write$okio", "(Lokio/Buffer;II)V", "other", "otherOffset", "", "rangeEquals", "(ILokio/ByteString;II)Z", "(I[BII)Z", TypedValues.AttributesType.S_TARGET, "targetOffset", "copyInto", "(I[BII)V", "prefix", "startsWith", "(Lokio/ByteString;)Z", "([B)Z", "suffix", "endsWith", "fromIndex", "indexOf", "(Lokio/ByteString;I)I", "([BI)I", "lastIndexOf", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "compareTo", "(Lokio/ByteString;)I", "toString", "-deprecated_getByte", "-deprecated_size", "size", "[B", "getData$okio", "Wwwwwwwwwwwwwwwwwwwwwwwww", "I", "getHashCode$okio", "setHashCode$okio", "(I)V", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getUtf8$okio", "setUtf8$okio", "(Ljava/lang/String;)V", "Companion", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 Util.kt\nokio/-SegmentedByteString\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n43#2,7:365\n53#2:372\n56#2:373\n64#2,4:374\n68#2:379\n70#2:381\n76#2,23:382\n104#2,23:405\n131#2,2:428\n133#2,9:431\n145#2:440\n148#2:441\n151#2:442\n154#2:443\n162#2:444\n172#2,3:445\n171#2:448\n185#2,2:449\n190#2:451\n194#2:452\n198#2:453\n202#2:454\n206#2,7:455\n219#2:462\n223#2,8:463\n235#2,4:471\n244#2,5:475\n253#2,6:480\n259#2,9:487\n322#2,8:496\n131#2,2:504\n133#2,9:507\n333#2,9:516\n68#3:378\n74#3:380\n74#3:486\n1#4:430\n1#4:506\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString\n*L\n66#1:365,7\n71#1:372\n108#1:373\n110#1:374,4\n110#1:379\n110#1:381\n112#1:382,23\n114#1:405,23\n118#1:428,2\n118#1:431,9\n120#1:440\n129#1:441\n131#1:442\n133#1:443\n152#1:444\n159#1:445,3\n159#1:448\n166#1:449,2\n168#1:451\n170#1:452\n172#1:453\n174#1:454\n180#1:455,7\n183#1:462\n186#1:463,8\n188#1:471,4\n190#1:475,5\n192#1:480,6\n192#1:487,9\n194#1:496,8\n194#1:504,2\n194#1:507,9\n194#1:516,9\n110#1:378\n110#1:380\n192#1:486\n118#1:430\n194#1:506\n*E\n"})
/* loaded from: classes7.dex */
public class ByteString implements Serializable, Comparable<ByteString> {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @JvmField
    @NotNull
    public static final ByteString EMPTY = new ByteString(new byte[0]);
    private static final long serialVersionUID = 1;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient String f13133Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public transient int f13134Wwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    private final byte[] data;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0012\n\u0002\u0010\u0005\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001b\u0010\b\u001a\u00020\u00072\n\u0010\u0006\u001a\u00020\u0004\"\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ'\u0010\r\u001a\u00020\u0007*\u00020\u00042\b\b\u0002\u0010\u000b\u001a\u00020\n2\b\b\u0002\u0010\f\u001a\u00020\nH\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u00020\u0007*\u00020\u000fH\u0007¢\u0006\u0004\b\u0010\u0010\u0011J\u0013\u0010\u0013\u001a\u00020\u0007*\u00020\u0012H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u001d\u0010\u0017\u001a\u00020\u0007*\u00020\u00122\b\b\u0002\u0010\u0016\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u0004\u0018\u00010\u0007*\u00020\u0012H\u0007¢\u0006\u0004\b\u0019\u0010\u0014J\u0013\u0010\u001a\u001a\u00020\u0007*\u00020\u0012H\u0007¢\u0006\u0004\b\u001a\u0010\u0014J\u001b\u0010\u001c\u001a\u00020\u0007*\u00020\u001b2\u0006\u0010\f\u001a\u00020\nH\u0007¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00078\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010!\u001a\u00020 8\u0002X\u0082T¢\u0006\u0006\n\u0004\b!\u0010\"¨\u0006#"}, d2 = {"Lokio/ByteString$Companion;", "", "<init>", "()V", "", "", "data", "Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([B)Lokio/ByteString;", "", TypedValues.CycleType.S_WAVE_OFFSET, "byteCount", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "([BII)Lokio/ByteString;", "Ljava/nio/ByteBuffer;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/nio/ByteBuffer;)Lokio/ByteString;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Lokio/ByteString;", "Ljava/nio/charset/Charset;", "charset", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/nio/charset/Charset;)Lokio/ByteString;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/io/InputStream;", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/io/InputStream;I)Lokio/ByteString;", "EMPTY", "Lokio/ByteString;", "", "serialVersionUID", "J", "okio"}, k = 1, mv = {1, 8, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nByteString.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n+ 2 ByteString.kt\nokio/internal/-ByteString\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,364:1\n271#2:365\n275#2,3:366\n282#2,3:369\n289#2,2:372\n295#2:374\n297#2,7:376\n1#3:375\n1#3:383\n*S KotlinDebug\n*F\n+ 1 ByteString.kt\nokio/ByteString$Companion\n*L\n234#1:365\n239#1:366,3\n251#1:369,3\n259#1:372,2\n262#1:374\n262#1:376,7\n262#1:375\n*E\n"})
    /* loaded from: classes7.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwww(Companion companion, byte[] bArr, int i, int i2, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, i2);
        }

        @JvmStatic
        @JvmName(name = "read")
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull InputStream inputStream, int i) throws IOException {
            if (i >= 0) {
                byte[] bArr = new byte[i];
                int i2 = 0;
                while (i2 < i) {
                    int read = inputStream.read(bArr, i2, i - i2);
                    if (read != -1) {
                        i2 += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("byteCount < 0: " + i).toString());
        }

        @JvmStatic
        @JvmName(name = "of")
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte[] bArr, int i, int i2) {
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i2);
            SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr.length, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return new ByteString(ArraysKt.copyOfRange(bArr, i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + i));
        }

        @JvmStatic
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull byte... bArr) {
            return new ByteString(Arrays.copyOf(bArr, bArr.length));
        }

        @JvmStatic
        @JvmName(name = "of")
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull ByteBuffer byteBuffer) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }

        @JvmStatic
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            ByteString byteString = new ByteString(_JvmPlatformKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
            byteString.setUtf8$okio(str);
            return byteString;
        }

        @JvmStatic
        @JvmName(name = "encodeString")
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Charset charset) {
            return new ByteString(str.getBytes(charset));
        }

        @JvmStatic
        @NotNull
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            if (str.length() % 2 == 0) {
                int length = str.length() / 2;
                byte[] bArr = new byte[length];
                for (int i = 0; i < length; i++) {
                    int i2 = i * 2;
                    bArr[i] = (byte) ((okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.charAt(i2)) << 4) + okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str.charAt(i2 + 1)));
                }
                return new ByteString(bArr);
            }
            throw new IllegalArgumentException(("Unexpected hex string: " + str).toString());
        }

        @JvmStatic
        @Nullable
        public final ByteString Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            byte[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Base64.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
                return new ByteString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
            return null;
        }

        public Companion() {
        }
    }

    public ByteString(@NotNull byte[] bArr) {
        this.data = bArr;
    }

    public static /* synthetic */ void copyInto$default(ByteString byteString, int i, byte[] bArr, int i2, int i3, int i4, Object obj) {
        if (obj == null) {
            if ((i4 & 1) != 0) {
                i = 0;
            }
            if ((i4 & 4) != 0) {
                i2 = 0;
            }
            byteString.copyInto(i, bArr, i2, i3);
            return;
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: copyInto");
    }

    @JvmStatic
    @Nullable
    public static final ByteString decodeBase64(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @JvmStatic
    @NotNull
    public static final ByteString decodeHex(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    @JvmStatic
    @JvmName(name = "encodeString")
    @NotNull
    public static final ByteString encodeString(@NotNull String str, @NotNull Charset charset) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, charset);
    }

    @JvmStatic
    @NotNull
    public static final ByteString encodeUtf8(@NotNull String str) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return byteString.indexOf(byteString2, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, ByteString byteString2, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return byteString.lastIndexOf(byteString2, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    @JvmStatic
    @JvmName(name = "of")
    @NotNull
    public static final ByteString of(@NotNull ByteBuffer byteBuffer) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byteBuffer);
    }

    @JvmStatic
    @JvmName(name = "read")
    @NotNull
    public static final ByteString read(@NotNull InputStream inputStream, int i) throws IOException {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(inputStream, i);
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IOException {
        ByteString Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Companion.Wwwwwwwwwwwwwwwwwwwwwwwwww(objectInputStream, objectInputStream.readInt());
        Field declaredField = ByteString.class.getDeclaredField("data");
        declaredField.setAccessible(true);
        declaredField.set(this, Wwwwwwwwwwwwwwwwwwwwwwwwww2.data);
    }

    public static /* synthetic */ ByteString substring$default(ByteString byteString, int i, int i2, int i3, Object obj) {
        if (obj == null) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return byteString.substring(i, i2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: substring");
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to operator function", replaceWith = @ReplaceWith(expression = "this[index]", imports = {}))
    @JvmName(name = "-deprecated_getByte")
    /* renamed from: -deprecated_getByte  reason: not valid java name */
    public final byte m2038deprecated_getByte(int i) {
        return getByte(i);
    }

    @Deprecated(level = DeprecationLevel.ERROR, message = "moved to val", replaceWith = @ReplaceWith(expression = "size", imports = {}))
    @JvmName(name = "-deprecated_size")
    /* renamed from: -deprecated_size  reason: not valid java name */
    public final int m2039deprecated_size() {
        return size();
    }

    @NotNull
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    @NotNull
    public String base64() {
        return Base64.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), null, 1, null);
    }

    @NotNull
    public String base64Url() {
        return Base64.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), Base64.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
    }

    public void copyInto(int i, @NotNull byte[] bArr, int i2, int i3) {
        ArraysKt.copyInto(getData$okio(), bArr, i2, i, i3 + i);
    }

    @NotNull
    public ByteString digest$okio(@NotNull String str) {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.data, 0, size());
        return new ByteString(messageDigest.digest());
    }

    public final boolean endsWith(@NotNull ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ByteString) {
            ByteString byteString = (ByteString) obj;
            if (byteString.size() == getData$okio().length && byteString.rangeEquals(0, getData$okio(), 0, getData$okio().length)) {
                return true;
            }
        }
        return false;
    }

    @JvmName(name = "getByte")
    public final byte getByte(int i) {
        return internalGet$okio(i);
    }

    @NotNull
    public final byte[] getData$okio() {
        return this.data;
    }

    public final int getHashCode$okio() {
        return this.f13134Wwwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int getSize$okio() {
        return getData$okio().length;
    }

    @Nullable
    public final String getUtf8$okio() {
        return this.f13133Wwwwwwwwwwwwwwwwwwwwwwww;
    }

    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int hashCode = Arrays.hashCode(getData$okio());
        setHashCode$okio(hashCode);
        return hashCode;
    }

    @NotNull
    public String hex() {
        byte[] data$okio;
        char[] cArr = new char[getData$okio().length * 2];
        int i = 0;
        for (byte b : getData$okio()) {
            int i2 = i + 1;
            cArr[i] = okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[(b >> 4) & 15];
            i += 2;
            cArr[i2] = okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()[b & Ascii.SI];
        }
        return StringsKt.concatToString(cArr);
    }

    @NotNull
    public ByteString hmac$okio(@NotNull String str, @NotNull ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return new ByteString(mac.doFinal(this.data));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @NotNull
    public ByteString hmacSha1(@NotNull ByteString byteString) {
        return hmac$okio("HmacSHA1", byteString);
    }

    @NotNull
    public ByteString hmacSha256(@NotNull ByteString byteString) {
        return hmac$okio("HmacSHA256", byteString);
    }

    @NotNull
    public ByteString hmacSha512(@NotNull ByteString byteString) {
        return hmac$okio("HmacSHA512", byteString);
    }

    @JvmOverloads
    public final int indexOf(@NotNull ByteString byteString) {
        return indexOf$default(this, byteString, 0, 2, (Object) null);
    }

    @NotNull
    public byte[] internalArray$okio() {
        return getData$okio();
    }

    public byte internalGet$okio(int i) {
        return getData$okio()[i];
    }

    @JvmOverloads
    public final int lastIndexOf(@NotNull ByteString byteString) {
        return lastIndexOf$default(this, byteString, 0, 2, (Object) null);
    }

    @NotNull
    public final ByteString md5() {
        return digest$okio(SameMD5.TAG);
    }

    public boolean rangeEquals(int i, @NotNull ByteString byteString, int i2, int i3) {
        return byteString.rangeEquals(i2, getData$okio(), i, i3);
    }

    public final void setHashCode$okio(int i) {
        this.f13134Wwwwwwwwwwwwwwwwwwwwwwwww = i;
    }

    public final void setUtf8$okio(@Nullable String str) {
        this.f13133Wwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    @NotNull
    public final ByteString sha1() {
        return digest$okio(AndroidStaticDeviceInfoDataSource.ALGORITHM_SHA1);
    }

    @NotNull
    public final ByteString sha256() {
        return digest$okio("SHA-256");
    }

    @NotNull
    public final ByteString sha512() {
        return digest$okio("SHA-512");
    }

    @JvmName(name = "size")
    public final int size() {
        return getSize$okio();
    }

    public final boolean startsWith(@NotNull ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    @NotNull
    public String string(@NotNull Charset charset) {
        return new String(this.data, charset);
    }

    @JvmOverloads
    @NotNull
    public final ByteString substring() {
        return substring$default(this, 0, 0, 3, null);
    }

    @NotNull
    public ByteString toAsciiLowercase() {
        for (int i = 0; i < getData$okio().length; i++) {
            byte b = getData$okio()[i];
            if (b >= 65 && b <= 90) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                copyOf[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b2 = copyOf[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        copyOf[i2] = (byte) (b2 + 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @NotNull
    public ByteString toAsciiUppercase() {
        for (int i = 0; i < getData$okio().length; i++) {
            byte b = getData$okio()[i];
            if (b >= 97 && b <= 122) {
                byte[] data$okio = getData$okio();
                byte[] copyOf = Arrays.copyOf(data$okio, data$okio.length);
                copyOf[i] = (byte) (b - 32);
                for (int i2 = i + 1; i2 < copyOf.length; i2++) {
                    byte b2 = copyOf[i2];
                    if (b2 >= 97 && b2 <= 122) {
                        copyOf[i2] = (byte) (b2 - 32);
                    }
                }
                return new ByteString(copyOf);
            }
        }
        return this;
    }

    @NotNull
    public byte[] toByteArray() {
        byte[] data$okio = getData$okio();
        return Arrays.copyOf(data$okio, data$okio.length);
    }

    @NotNull
    public String toString() {
        ByteString byteString;
        if (getData$okio().length == 0) {
            return "[size=0]";
        }
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), 64);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == -1) {
            if (getData$okio().length <= 64) {
                return "[hex=" + hex() + AbstractJsonLexerKt.END_LIST;
            }
            StringBuilder sb = new StringBuilder();
            sb.append("[size=");
            sb.append(getData$okio().length);
            sb.append(" hex=");
            int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, 64);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= getData$okio().length) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 >= 0) {
                    if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == getData$okio().length) {
                        byteString = this;
                    } else {
                        byteString = new ByteString(ArraysKt.copyOfRange(getData$okio(), 0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                    }
                    sb.append(byteString.hex());
                    sb.append("…]");
                    return sb.toString();
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        String utf8 = utf8();
        String replace$default = StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(utf8.substring(0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2), "\\", "\\\\", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 < utf8.length()) {
            return "[size=" + getData$okio().length + " text=" + replace$default + "…]";
        }
        return "[text=" + replace$default + AbstractJsonLexerKt.END_LIST;
    }

    @NotNull
    public String utf8() {
        String utf8$okio = getUtf8$okio();
        if (utf8$okio == null) {
            String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = _JvmPlatformKt.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(internalArray$okio());
            setUtf8$okio(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        return utf8$okio;
    }

    public void write(@NotNull OutputStream outputStream) throws IOException {
        outputStream.write(this.data);
    }

    public void write$okio(@NotNull Buffer buffer, int i, int i2) {
        okio.internal.ByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, buffer, i, i2);
    }

    public static /* synthetic */ int indexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = 0;
            }
            return byteString.indexOf(bArr, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: indexOf");
    }

    @JvmStatic
    @NotNull
    public static final ByteString of(@NotNull byte... bArr) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr);
    }

    @Override // java.lang.Comparable
    public int compareTo(@NotNull ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int min = Math.min(size, size2);
        for (int i = 0; i < min; i++) {
            int i2 = getByte(i) & 255;
            int i3 = byteString.getByte(i) & 255;
            if (i2 != i3) {
                return i2 < i3 ? -1 : 1;
            }
        }
        if (size == size2) {
            return 0;
        }
        return size < size2 ? -1 : 1;
    }

    public final boolean endsWith(@NotNull byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    @JvmOverloads
    public final int indexOf(@NotNull byte[] bArr) {
        return indexOf$default(this, bArr, 0, 2, (Object) null);
    }

    @JvmOverloads
    public final int lastIndexOf(@NotNull byte[] bArr) {
        return lastIndexOf$default(this, bArr, 0, 2, (Object) null);
    }

    public boolean rangeEquals(int i, @NotNull byte[] bArr, int i2, int i3) {
        return i >= 0 && i <= getData$okio().length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), i, bArr, i2, i3);
    }

    public final boolean startsWith(@NotNull byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    @JvmOverloads
    @NotNull
    public final ByteString substring(int i) {
        return substring$default(this, i, 0, 2, null);
    }

    public static /* synthetic */ int lastIndexOf$default(ByteString byteString, byte[] bArr, int i, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            return byteString.lastIndexOf(bArr, i);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: lastIndexOf");
    }

    @JvmStatic
    @JvmName(name = "of")
    @NotNull
    public static final ByteString of(@NotNull byte[] bArr, int i, int i2) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(bArr, i, i2);
    }

    @JvmOverloads
    public final int indexOf(@NotNull ByteString byteString, int i) {
        return indexOf(byteString.internalArray$okio(), i);
    }

    @JvmOverloads
    public final int lastIndexOf(@NotNull ByteString byteString, int i) {
        return lastIndexOf(byteString.internalArray$okio(), i);
    }

    @JvmOverloads
    @NotNull
    public ByteString substring(int i, int i2) {
        int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i2);
        if (i >= 0) {
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 <= getData$okio().length) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 - i >= 0) {
                    return (i == 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == getData$okio().length) ? this : new ByteString(ArraysKt.copyOfRange(getData$okio(), i, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2));
                }
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            throw new IllegalArgumentException(("endIndex > length(" + getData$okio().length + ')').toString());
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    @JvmOverloads
    public int indexOf(@NotNull byte[] bArr, int i) {
        int length = getData$okio().length - bArr.length;
        int max = Math.max(i, 0);
        if (max <= length) {
            while (!SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), max, bArr, 0, bArr.length)) {
                if (max == length) {
                    return -1;
                }
                max++;
            }
            return max;
        }
        return -1;
    }

    @JvmOverloads
    public int lastIndexOf(@NotNull byte[] bArr, int i) {
        for (int min = Math.min(SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, i), getData$okio().length - bArr.length); -1 < min; min--) {
            if (SegmentedByteString.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getData$okio(), min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }
}
