package kotlinx.serialization.json.internal;

import com.mbridge.msdk.MBridgeConstans;
import java.util.ArrayList;
import java.util.List;
import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\r\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u0005\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0001\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\t\n\u0002\b\n\b \u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\f\u001a\u00020\r*\u00020\u000eH\u0084\bJ\b\u0010\u000f\u001a\u00020\u0010H\u0016J\u0006\u0010\u0011\u001a\u00020\rJ\u0010\u0010\u0012\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\tH&J\b\u0010\u0014\u001a\u00020\rH&J\b\u0010\u0015\u001a\u00020\u0016H&J\u0006\u0010\u0017\u001a\u00020\rJ\u0010\u0010\u0018\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u000eH\u0004J\u0006\u0010\u001a\u001a\u00020\u0010J\u000e\u0010\u0015\u001a\u00020\u00162\u0006\u0010$\u001a\u00020\u0016J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u000eH&J\u0010\u0010%\u001a\u00020\u00102\u0006\u0010$\u001a\u00020\u000eH\u0004J\u001f\u0010&\u001a\u00020'2\u0006\u0010(\u001a\u00020\u00162\b\b\u0002\u0010)\u001a\u00020\rH\u0000¢\u0006\u0002\b*J\b\u0010+\u001a\u00020\u0016H\u0016J\u0010\u0010,\u001a\u00020\r2\b\b\u0002\u0010-\u001a\u00020\rJ\b\u0010.\u001a\u00020\tH&J\u001a\u0010/\u001a\u0004\u0018\u00010\u001c2\u0006\u00100\u001a\u00020\u001c2\u0006\u00101\u001a\u00020\rH&J\u0010\u00102\u001a\u0004\u0018\u00010\u001c2\u0006\u00101\u001a\u00020\rJ\u0006\u00103\u001a\u00020\u0010J\u0018\u00104\u001a\u00020\t2\u0006\u00105\u001a\u00020\u000e2\u0006\u00106\u001a\u00020\tH\u0016J\u0018\u00107\u001a\u00020\u001c2\u0006\u00106\u001a\u00020\t2\u0006\u00108\u001a\u00020\tH\u0016J\b\u00109\u001a\u00020\u001cH&J\u0018\u0010:\u001a\u00020\r2\u0006\u00101\u001a\u00020\r2\u0006\u00105\u001a\u00020\u000eH\u0002J3\u0010;\u001a\u00020\u00102\u0006\u00101\u001a\u00020\r2!\u0010<\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(@\u0012\u0004\u0012\u00020\u00100=H\u0016JC\u0010A\u001a\u00020\u00102\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\t2\u0006\u0010D\u001a\u00020\r2!\u0010<\u001a\u001d\u0012\u0013\u0012\u00110\u001c¢\u0006\f\b>\u0012\b\b?\u0012\u0004\b\b(@\u0012\u0004\u0012\u00020\u00100=H\u0002J\u0006\u0010E\u001a\u00020\u001cJ \u0010E\u001a\u00020\u001c2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010F\u001a\u00020\t2\u0006\u0010G\u001a\u00020\tH\u0005J\u0018\u0010H\u001a\u00020\t2\u0006\u0010I\u001a\u00020\t2\u0006\u0010G\u001a\u00020\tH\u0002J\u0018\u0010J\u001a\u00020\u001c2\u0006\u0010I\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\tH\u0002J\b\u0010K\u001a\u00020\u001cH\u0002J\u0006\u0010L\u001a\u00020\u001cJ\b\u0010M\u001a\u00020\rH\u0002J\u0006\u0010N\u001a\u00020\u001cJ\u0018\u0010O\u001a\u00020\u00102\u0006\u0010B\u001a\u00020\t2\u0006\u0010C\u001a\u00020\tH\u0014J\u0010\u0010P\u001a\u00020\t2\u0006\u0010F\u001a\u00020\tH\u0002J\u0018\u0010Q\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u00106\u001a\u00020\tH\u0002J1\u0010R\u001a\u00020\u00102\u0006\u0010S\u001a\u00020\r2\b\b\u0002\u0010\u0013\u001a\u00020\t2\f\u0010T\u001a\b\u0012\u0004\u0012\u00020\u001c0UH\u0080\bø\u0001\u0000¢\u0006\u0002\bVJ\u0018\u0010W\u001a\u00020\t2\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH\u0002J\u000e\u0010X\u001a\u00020\u00102\u0006\u0010Y\u001a\u00020\rJ\b\u0010Z\u001a\u00020\u001cH\u0016J\u000e\u0010[\u001a\u00020\u00102\u0006\u0010\\\u001a\u00020\u001cJ\"\u0010&\u001a\u00020'2\u0006\u0010T\u001a\u00020\u001c2\b\b\u0002\u0010\u0013\u001a\u00020\t2\b\b\u0002\u0010]\u001a\u00020\u001cJ\u0006\u0010^\u001a\u00020_J\u0006\u0010`\u001a\u00020\rJ\u0006\u0010a\u001a\u00020\rJ\u0010\u0010`\u001a\u00020\r2\u0006\u0010b\u001a\u00020\tH\u0003J\u0018\u0010c\u001a\u00020\u00102\u0006\u0010d\u001a\u00020\u001c2\u0006\u0010G\u001a\u00020\tH\u0002J\"\u0010e\u001a\u0002Hf\"\u0004\b\u0000\u0010f2\f\u0010g\u001a\b\u0012\u0004\u0012\u0002Hf0UH\u0082\b¢\u0006\u0002\u0010hR\u0012\u0010\u0004\u001a\u00020\u0005X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007R\u0012\u0010\b\u001a\u00020\t8\u0000@\u0000X\u0081\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010\u001d\u001a\u00060\u001ej\u0002`\u001fX\u0084\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006i"}, d2 = {"Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "", "<init>", "()V", "source", "", "getSource", "()Ljava/lang/CharSequence;", "currentPosition", "", MBridgeConstans.DYNAMIC_VIEW_WX_PATH, "Lkotlinx/serialization/json/internal/JsonPath;", "isWs", "", "", "ensureHaveChars", "", "isNotEof", "prefetchOrEof", "position", "canConsumeValue", "consumeNextToken", "", "tryConsumeComma", "isValidValueStart", "c", "expectEof", "peekedString", "", "escapedString", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "getEscapedString", "()Ljava/lang/StringBuilder;", "setEscapedString", "(Ljava/lang/StringBuilder;)V", "expected", "unexpectedToken", "fail", "", "expectedToken", "wasConsumed", "fail$kotlinx_serialization_json", "peekNextToken", "tryConsumeNull", "doConsume", "skipWhitespaces", "peekLeadingMatchingValue", "keyToMatch", "isLenient", "peekString", "discardPeeked", "indexOf", "char", "startPos", "substring", "endPos", "consumeKeyString", "insideString", "consumeStringChunked", "consumeChunk", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "stringChunk", "writeRange", "fromIndex", "toIndex", "currentChunkHasEscape", "consumeString", "startPosition", "current", "appendEscape", "lastPosition", "decodedString", "takePeeked", "consumeStringLenientNotNull", "wasUnquotedString", "consumeStringLenient", "appendRange", "appendEsc", "appendHex", "require", "condition", "message", "Lkotlin/Function0;", "require$kotlinx_serialization_json", "fromHexChar", "skipElement", "allowLenientStrings", "toString", "failOnUnknownKey", "key", "hint", "consumeNumericLiteral", "", "consumeBoolean", "consumeBooleanLenient", "start", "consumeBooleanLiteral", "literalSuffix", "withPositionRollback", "T", "action", "(Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nAbstractJsonLexer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,747:1\n739#1,5:748\n1#2:753\n*S KotlinDebug\n*F\n+ 1 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n216#1:748,5\n*E\n"})
/* loaded from: classes7.dex */
public abstract class AbstractJsonLexer {
    @JvmField
    public int currentPosition;
    @Nullable
    private String peekedString;
    @JvmField
    @NotNull
    public final JsonPath path = new JsonPath();
    @NotNull
    private StringBuilder escapedString = new StringBuilder();

    private final int appendEsc(int i) {
        int prefetchOrEof = prefetchOrEof(i);
        if (prefetchOrEof != -1) {
            int i2 = prefetchOrEof + 1;
            char charAt = getSource().charAt(prefetchOrEof);
            if (charAt == 'u') {
                return appendHex(getSource(), i2);
            }
            char escapeToChar = AbstractJsonLexerKt.escapeToChar(charAt);
            if (escapeToChar != 0) {
                this.escapedString.append(escapeToChar);
                return i2;
            }
            fail$default(this, "Invalid escaped char '" + charAt + '\'', 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        fail$default(this, "Expected escape sequence to continue, got EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int appendEscape(int i, int i2) {
        appendRange(i, i2);
        return appendEsc(i2 + 1);
    }

    private final int appendHex(CharSequence charSequence, int i) {
        int i2 = i + 4;
        if (i2 >= charSequence.length()) {
            this.currentPosition = i;
            ensureHaveChars();
            if (this.currentPosition + 4 < charSequence.length()) {
                return appendHex(charSequence, this.currentPosition);
            }
            fail$default(this, "Unexpected EOF during unicode escape", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        this.escapedString.append((char) ((fromHexChar(charSequence, i) << 12) + (fromHexChar(charSequence, i + 1) << 8) + (fromHexChar(charSequence, i + 2) << 4) + fromHexChar(charSequence, i + 3)));
        return i2;
    }

    private final void consumeBooleanLiteral(String str, int i) {
        if (getSource().length() - i >= str.length()) {
            int length = str.length();
            for (int i2 = 0; i2 < length; i2++) {
                if (str.charAt(i2) != (getSource().charAt(i + i2) | ' ')) {
                    fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
            }
            this.currentPosition = i + str.length();
            return;
        }
        fail$default(this, "Unexpected end of boolean literal", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private static final double consumeNumericLiteral$calculateExponent(long j, boolean z) {
        if (!z) {
            return Math.pow(10.0d, -j);
        }
        if (z) {
            return Math.pow(10.0d, j);
        }
        throw new NoWhenBranchMatchedException();
    }

    private final String decodedString(int i, int i2) {
        appendRange(i, i2);
        String sb = this.escapedString.toString();
        this.escapedString.setLength(0);
        return sb;
    }

    public static /* synthetic */ Void fail$default(AbstractJsonLexer abstractJsonLexer, String str, int i, String str2, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = abstractJsonLexer.currentPosition;
            }
            if ((i2 & 4) != 0) {
                str2 = "";
            }
            return abstractJsonLexer.fail(str, i, str2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    public static /* synthetic */ Void fail$kotlinx_serialization_json$default(AbstractJsonLexer abstractJsonLexer, byte b, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 2) != 0) {
                z = true;
            }
            return abstractJsonLexer.fail$kotlinx_serialization_json(b, z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fail");
    }

    private final int fromHexChar(CharSequence charSequence, int i) {
        char charAt = charSequence.charAt(i);
        if ('0' <= charAt && charAt < ':') {
            return charAt - '0';
        }
        if ('a' <= charAt && charAt < 'g') {
            return charAt - 'W';
        }
        if ('A' <= charAt && charAt < 'G') {
            return charAt - '7';
        }
        fail$default(this, "Invalid toHexChar char '" + charAt + "' in unicode escape", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final boolean insideString(boolean z, char c) {
        if (z) {
            if (AbstractJsonLexerKt.charToTokenClass(c) != 0) {
                return false;
            }
            return true;
        } else if (c == '\"') {
            return false;
        } else {
            return true;
        }
    }

    public static /* synthetic */ void require$kotlinx_serialization_json$default(AbstractJsonLexer abstractJsonLexer, boolean z, int i, Function0 function0, int i2, Object obj) {
        if (obj == null) {
            if ((i2 & 2) != 0) {
                i = abstractJsonLexer.currentPosition;
            }
            int i3 = i;
            if (z) {
                return;
            }
            fail$default(abstractJsonLexer, (String) function0.invoke(), i3, null, 4, null);
            throw new KotlinNothingValueException();
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: require");
    }

    private final String takePeeked() {
        String str = this.peekedString;
        this.peekedString = null;
        return str;
    }

    public static /* synthetic */ boolean tryConsumeNull$default(AbstractJsonLexer abstractJsonLexer, boolean z, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                z = true;
            }
            return abstractJsonLexer.tryConsumeNull(z);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryConsumeNull");
    }

    private final boolean wasUnquotedString() {
        if (getSource().charAt(this.currentPosition - 1) != '\"') {
            return true;
        }
        return false;
    }

    private final <T> T withPositionRollback(Function0<? extends T> function0) {
        int i = this.currentPosition;
        try {
            return function0.invoke();
        } finally {
            InlineMarker.finallyStart(1);
            this.currentPosition = i;
            InlineMarker.finallyEnd(1);
        }
    }

    private final void writeRange(int i, int i2, boolean z, Function1<? super String, Unit> function1) {
        if (z) {
            function1.invoke(decodedString(i, i2));
        } else {
            function1.invoke(substring(i, i2));
        }
    }

    public void appendRange(int i, int i2) {
        this.escapedString.append(getSource(), i, i2);
    }

    public abstract boolean canConsumeValue();

    public final boolean consumeBoolean() {
        return consumeBoolean(skipWhitespaces());
    }

    public final boolean consumeBooleanLenient() {
        boolean z;
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces != getSource().length()) {
            if (getSource().charAt(skipWhitespaces) == '\"') {
                skipWhitespaces++;
                z = true;
            } else {
                z = false;
            }
            boolean consumeBoolean = consumeBoolean(skipWhitespaces);
            if (z) {
                if (this.currentPosition != getSource().length()) {
                    if (getSource().charAt(this.currentPosition) == '\"') {
                        this.currentPosition++;
                        return consumeBoolean;
                    }
                    fail$default(this, "Expected closing quotation mark", 0, null, 6, null);
                    throw new KotlinNothingValueException();
                }
                fail$default(this, "EOF", 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
            return consumeBoolean;
        }
        fail$default(this, "EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public abstract String consumeKeyString();

    public abstract byte consumeNextToken();

    public final byte consumeNextToken(byte b) {
        byte consumeNextToken = consumeNextToken();
        if (consumeNextToken == b) {
            return consumeNextToken;
        }
        fail$kotlinx_serialization_json$default(this, b, false, 2, null);
        throw new KotlinNothingValueException();
    }

    public abstract void consumeNextToken(char c);

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01f1, code lost:
        fail$default(r18, "Expected numeric literal", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0201, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x011a, code lost:
        fail$default(r18, "Unexpected symbol '" + r15 + "' in numeric literal", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x013e, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x013f, code lost:
        if (r2 == r1) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0141, code lost:
        r4 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0143, code lost:
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0144, code lost:
        if (r1 == r2) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0146, code lost:
        if (r9 == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x014a, code lost:
        if (r1 == (r2 - 1)) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x014c, code lost:
        if (r0 == false) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x014e, code lost:
        if (r4 == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0158, code lost:
        if (getSource().charAt(r2) != '\"') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x015a, code lost:
        r2 = r2 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x015f, code lost:
        fail$default(r18, "Expected closing quotation mark", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x016f, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0170, code lost:
        fail$default(r18, "EOF", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0180, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0181, code lost:
        r18.currentPosition = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0183, code lost:
        if (r8 == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0185, code lost:
        r1 = r10 * consumeNumericLiteral$calculateExponent(r12, r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x018f, code lost:
        if (r1 > 9.223372036854776E18d) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0195, code lost:
        if (r1 < (-9.223372036854776E18d)) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x019d, code lost:
        if (java.lang.Math.floor(r1) != r1) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x019f, code lost:
        r10 = (long) r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x01a1, code lost:
        fail$default(r18, "Can't convert " + r1 + " to Long", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x01c3, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x01c4, code lost:
        fail$default(r18, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x01d4, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x01d5, code lost:
        if (r9 == false) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x01d7, code lost:
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x01dc, code lost:
        if (r10 == Long.MIN_VALUE) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01df, code lost:
        return -r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01e0, code lost:
        fail$default(r18, "Numeric value overflow", 0, null, 6, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x01f0, code lost:
        throw new kotlin.KotlinNothingValueException();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long consumeNumericLiteral() {
        /*
            Method dump skipped, instructions count: 531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.AbstractJsonLexer.consumeNumericLiteral():long");
    }

    @NotNull
    public final String consumeString() {
        if (this.peekedString != null) {
            return takePeeked();
        }
        return consumeKeyString();
    }

    public void consumeStringChunked(boolean z, @NotNull Function1<? super String, Unit> function1) {
        int i;
        int i2;
        byte peekNextToken = peekNextToken();
        if (!z || peekNextToken == 0) {
            if (!z) {
                consumeNextToken('\"');
            }
            int i3 = this.currentPosition;
            char charAt = getSource().charAt(i3);
            boolean z2 = false;
            int i4 = i3;
            while (insideString(z, charAt)) {
                if (!z && charAt == '\\') {
                    i2 = prefetchOrEof(appendEscape(i3, i4));
                    z2 = true;
                    i = i2;
                } else {
                    int i5 = i4 + 1;
                    i = i3;
                    i2 = i5;
                }
                if (i2 >= getSource().length()) {
                    writeRange(i, i2, z2, function1);
                    int prefetchOrEof = prefetchOrEof(i2);
                    if (prefetchOrEof != -1) {
                        z2 = false;
                        i3 = prefetchOrEof;
                        i4 = i3;
                    } else {
                        fail$default(this, "EOF", prefetchOrEof, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    int i6 = i;
                    i4 = i2;
                    i3 = i6;
                }
                charAt = getSource().charAt(i4);
            }
            writeRange(i3, i4, z2, function1);
            this.currentPosition = i4;
            if (!z) {
                consumeNextToken('\"');
            }
        }
    }

    @NotNull
    public final String consumeStringLenient() {
        String decodedString;
        if (this.peekedString != null) {
            return takePeeked();
        }
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces < getSource().length() && skipWhitespaces != -1) {
            byte charToTokenClass = AbstractJsonLexerKt.charToTokenClass(getSource().charAt(skipWhitespaces));
            if (charToTokenClass == 1) {
                return consumeString();
            }
            if (charToTokenClass == 0) {
                boolean z = false;
                while (AbstractJsonLexerKt.charToTokenClass(getSource().charAt(skipWhitespaces)) == 0) {
                    skipWhitespaces++;
                    if (skipWhitespaces >= getSource().length()) {
                        appendRange(this.currentPosition, skipWhitespaces);
                        int prefetchOrEof = prefetchOrEof(skipWhitespaces);
                        if (prefetchOrEof == -1) {
                            this.currentPosition = skipWhitespaces;
                            return decodedString(0, 0);
                        }
                        skipWhitespaces = prefetchOrEof;
                        z = true;
                    }
                }
                if (!z) {
                    decodedString = substring(this.currentPosition, skipWhitespaces);
                } else {
                    decodedString = decodedString(this.currentPosition, skipWhitespaces);
                }
                this.currentPosition = skipWhitespaces;
                return decodedString;
            }
            fail$default(this, "Expected beginning of the string, but got " + getSource().charAt(skipWhitespaces), 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        fail$default(this, "EOF", skipWhitespaces, null, 4, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String consumeStringLenientNotNull() {
        String consumeStringLenient = consumeStringLenient();
        if (Intrinsics.areEqual(consumeStringLenient, AbstractJsonLexerKt.NULL) && wasUnquotedString()) {
            fail$default(this, "Unexpected 'null' value instead of string literal", 0, null, 6, null);
            throw new KotlinNothingValueException();
        }
        return consumeStringLenient;
    }

    public final void discardPeeked() {
        this.peekedString = null;
    }

    public final void expectEof() {
        if (consumeNextToken() == 10) {
            return;
        }
        fail$default(this, "Expected EOF after parsing, but had " + getSource().charAt(this.currentPosition - 1) + " instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final Void fail(@NotNull String str, int i, @NotNull String str2) {
        String str3;
        if (str2.length() == 0) {
            str3 = "";
        } else {
            str3 = '\n' + str2;
        }
        throw JsonExceptionsKt.JsonDecodingException(i, str + " at path: " + this.path.getPath() + str3, getSource());
    }

    @NotNull
    public final Void fail$kotlinx_serialization_json(byte b, boolean z) {
        int i;
        String str;
        String str2 = AbstractJsonLexerKt.tokenDescription(b);
        if (z) {
            i = this.currentPosition - 1;
        } else {
            i = this.currentPosition;
        }
        int i2 = i;
        if (this.currentPosition != getSource().length() && i2 >= 0) {
            str = String.valueOf(getSource().charAt(i2));
        } else {
            str = "EOF";
        }
        fail$default(this, "Expected " + str2 + ", but had '" + str + "' instead", i2, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public final void failOnUnknownKey(@NotNull String str) {
        int lastIndexOf$default = StringsKt.lastIndexOf$default((CharSequence) substring(0, this.currentPosition), str, 0, false, 6, (Object) null);
        fail("Encountered an unknown key '" + str + '\'', lastIndexOf$default, AbstractJsonLexerKt.ignoreUnknownKeysHint);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final StringBuilder getEscapedString() {
        return this.escapedString;
    }

    @NotNull
    public abstract CharSequence getSource();

    public int indexOf(char c, int i) {
        return StringsKt.indexOf$default(getSource(), c, i, false, 4, (Object) null);
    }

    public final boolean isNotEof() {
        if (peekNextToken() != 10) {
            return true;
        }
        return false;
    }

    public final boolean isValidValueStart(char c) {
        if (c != ',' && c != ':' && c != ']' && c != '}') {
            return true;
        }
        return false;
    }

    public final boolean isWs(char c) {
        if (c != ' ' && c != '\n' && c != '\r' && c != '\t') {
            return false;
        }
        return true;
    }

    @Nullable
    public abstract String peekLeadingMatchingValue(@NotNull String str, boolean z);

    public byte peekNextToken() {
        CharSequence source = getSource();
        int i = this.currentPosition;
        while (true) {
            int prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof != -1) {
                char charAt = source.charAt(prefetchOrEof);
                if (charAt != '\t' && charAt != '\n' && charAt != '\r' && charAt != ' ') {
                    this.currentPosition = prefetchOrEof;
                    return AbstractJsonLexerKt.charToTokenClass(charAt);
                }
                i = prefetchOrEof + 1;
            } else {
                this.currentPosition = prefetchOrEof;
                return (byte) 10;
            }
        }
    }

    @Nullable
    public final String peekString(boolean z) {
        String consumeString;
        byte peekNextToken = peekNextToken();
        if (z) {
            if (peekNextToken != 1 && peekNextToken != 0) {
                return null;
            }
            consumeString = consumeStringLenient();
        } else if (peekNextToken != 1) {
            return null;
        } else {
            consumeString = consumeString();
        }
        this.peekedString = consumeString;
        return consumeString;
    }

    public abstract int prefetchOrEof(int i);

    public final void require$kotlinx_serialization_json(boolean z, int i, @NotNull Function0<String> function0) {
        if (z) {
            return;
        }
        fail$default(this, function0.invoke(), i, null, 4, null);
        throw new KotlinNothingValueException();
    }

    public final void setEscapedString(@NotNull StringBuilder sb) {
        this.escapedString = sb;
    }

    public final void skipElement(boolean z) {
        ArrayList arrayList = new ArrayList();
        byte peekNextToken = peekNextToken();
        if (peekNextToken != 8 && peekNextToken != 6) {
            consumeStringLenient();
            return;
        }
        while (true) {
            byte peekNextToken2 = peekNextToken();
            if (peekNextToken2 == 1) {
                if (z) {
                    consumeStringLenient();
                } else {
                    consumeKeyString();
                }
            } else {
                if (peekNextToken2 != 8 && peekNextToken2 != 6) {
                    if (peekNextToken2 == 9) {
                        if (((Number) CollectionsKt.last((List<? extends Object>) arrayList)).byteValue() == 8) {
                            CollectionsKt.removeLast(arrayList);
                        } else {
                            int i = this.currentPosition;
                            throw JsonExceptionsKt.JsonDecodingException(i, "found ] instead of } at path: " + this.path, getSource());
                        }
                    } else if (peekNextToken2 == 7) {
                        if (((Number) CollectionsKt.last((List<? extends Object>) arrayList)).byteValue() == 6) {
                            CollectionsKt.removeLast(arrayList);
                        } else {
                            int i2 = this.currentPosition;
                            throw JsonExceptionsKt.JsonDecodingException(i2, "found } instead of ] at path: " + this.path, getSource());
                        }
                    } else if (peekNextToken2 == 10) {
                        fail$default(this, "Unexpected end of input due to malformed JSON during ignoring unknown keys", 0, null, 6, null);
                        throw new KotlinNothingValueException();
                    }
                } else {
                    arrayList.add(Byte.valueOf(peekNextToken2));
                }
                consumeNextToken();
                if (arrayList.size() == 0) {
                    return;
                }
            }
        }
    }

    public abstract int skipWhitespaces();

    @NotNull
    public String substring(int i, int i2) {
        return getSource().subSequence(i, i2).toString();
    }

    @NotNull
    public String toString() {
        return "JsonReader(source='" + ((Object) getSource()) + "', currentPosition=" + this.currentPosition + ')';
    }

    public final boolean tryConsumeComma() {
        int skipWhitespaces = skipWhitespaces();
        CharSequence source = getSource();
        if (skipWhitespaces >= source.length() || skipWhitespaces == -1 || source.charAt(skipWhitespaces) != ',') {
            return false;
        }
        this.currentPosition++;
        return true;
    }

    public final boolean tryConsumeNull(boolean z) {
        int prefetchOrEof = prefetchOrEof(skipWhitespaces());
        int length = getSource().length() - prefetchOrEof;
        if (length < 4 || prefetchOrEof == -1) {
            return false;
        }
        for (int i = 0; i < 4; i++) {
            if (AbstractJsonLexerKt.NULL.charAt(i) != getSource().charAt(prefetchOrEof + i)) {
                return false;
            }
        }
        if (length > 4 && AbstractJsonLexerKt.charToTokenClass(getSource().charAt(prefetchOrEof + 4)) == 0) {
            return false;
        }
        if (z) {
            this.currentPosition = prefetchOrEof + 4;
            return true;
        }
        return true;
    }

    public final void unexpectedToken(char c) {
        int i = this.currentPosition;
        if (i > 0 && c == '\"') {
            try {
                this.currentPosition = i - 1;
                String consumeStringLenient = consumeStringLenient();
                this.currentPosition = i;
                if (Intrinsics.areEqual(consumeStringLenient, AbstractJsonLexerKt.NULL)) {
                    fail("Expected string literal but 'null' literal was found", this.currentPosition - 1, AbstractJsonLexerKt.coerceInputValuesHint);
                    throw new KotlinNothingValueException();
                }
            } catch (Throwable th) {
                this.currentPosition = i;
                throw th;
            }
        }
        fail$kotlinx_serialization_json$default(this, AbstractJsonLexerKt.charToTokenClass(c), false, 2, null);
        throw new KotlinNothingValueException();
    }

    private final boolean consumeBoolean(int i) {
        int prefetchOrEof = prefetchOrEof(i);
        if (prefetchOrEof < getSource().length() && prefetchOrEof != -1) {
            int i2 = prefetchOrEof + 1;
            int charAt = getSource().charAt(prefetchOrEof) | ' ';
            if (charAt == 102) {
                consumeBooleanLiteral("alse", i2);
                return false;
            } else if (charAt == 116) {
                consumeBooleanLiteral("rue", i2);
                return true;
            } else {
                fail$default(this, "Expected valid boolean literal prefix, but had '" + consumeStringLenient() + '\'', 0, null, 6, null);
                throw new KotlinNothingValueException();
            }
        }
        fail$default(this, "EOF", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    @NotNull
    public final String consumeString(@NotNull CharSequence charSequence, int i, int i2) {
        String decodedString;
        char charAt = charSequence.charAt(i2);
        boolean z = false;
        while (charAt != '\"') {
            if (charAt == '\\') {
                int prefetchOrEof = prefetchOrEof(appendEscape(i, i2));
                if (prefetchOrEof == -1) {
                    fail$default(this, "Unexpected EOF", prefetchOrEof, null, 4, null);
                    throw new KotlinNothingValueException();
                }
                z = true;
                i = prefetchOrEof;
                i2 = i;
            } else {
                i2++;
                if (i2 >= charSequence.length()) {
                    appendRange(i, i2);
                    int prefetchOrEof2 = prefetchOrEof(i2);
                    if (prefetchOrEof2 == -1) {
                        fail$default(this, "Unexpected EOF", prefetchOrEof2, null, 4, null);
                        throw new KotlinNothingValueException();
                    }
                    i = prefetchOrEof2;
                    i2 = i;
                    z = true;
                } else {
                    continue;
                }
            }
            charAt = charSequence.charAt(i2);
        }
        if (!z) {
            decodedString = substring(i, i2);
        } else {
            decodedString = decodedString(i, i2);
        }
        this.currentPosition = i2 + 1;
        return decodedString;
    }

    public void ensureHaveChars() {
    }
}
