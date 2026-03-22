package kotlinx.serialization.json.internal;

import kotlin.KotlinNothingValueException;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0019\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\f\n\u0000\n\u0002\u0010\u000b\n\u0002\u0010\u0005\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\rH\u0016J\b\u0010\b\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u000eH\u0016J\u001c\u0010\u0010\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\r0\u00112\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\u0010\u0010\u0014\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0012H\u0002J\b\u0010\u0015\u001a\u00020\u0012H\u0016¨\u0006\u0016"}, d2 = {"Lkotlinx/serialization/json/internal/ReaderJsonLexerWithComments;", "Lkotlinx/serialization/json/internal/ReaderJsonLexer;", "reader", "Lkotlinx/serialization/json/internal/InternalJsonReader;", "buffer", "", "<init>", "(Lkotlinx/serialization/json/internal/InternalJsonReader;[C)V", "consumeNextToken", "", "expected", "", "canConsumeValue", "", "", "peekNextToken", "handleComment", "Lkotlin/Pair;", "", "position", "prefetchWithinThreshold", "skipWhitespaces", "kotlinx-serialization-json"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nCommentLexers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/ReaderJsonLexerWithComments\n+ 2 AbstractJsonLexer.kt\nkotlinx/serialization/json/internal/AbstractJsonLexer\n*L\n1#1,219:1\n158#2:220\n*S KotlinDebug\n*F\n+ 1 CommentLexers.kt\nkotlinx/serialization/json/internal/ReaderJsonLexerWithComments\n*L\n204#1:220\n*E\n"})
/* loaded from: classes7.dex */
public final class ReaderJsonLexerWithComments extends ReaderJsonLexer {
    public ReaderJsonLexerWithComments(@NotNull InternalJsonReader internalJsonReader, @NotNull char[] cArr) {
        super(internalJsonReader, cArr);
    }

    private final Pair<Integer, Boolean> handleComment(int i) {
        int i2 = i + 2;
        char charAt = getSource().charAt(i + 1);
        if (charAt != '*') {
            if (charAt != '/') {
                return TuplesKt.to(Integer.valueOf(i), Boolean.FALSE);
            }
            int i3 = i2;
            while (i != -1) {
                int indexOf$default = StringsKt.indexOf$default((CharSequence) getSource(), '\n', i3, false, 4, (Object) null);
                if (indexOf$default == -1) {
                    i3 = prefetchOrEof(getSource().length());
                    i = i3;
                } else {
                    return TuplesKt.to(Integer.valueOf(indexOf$default + 1), Boolean.TRUE);
                }
            }
            return TuplesKt.to(-1, Boolean.TRUE);
        }
        boolean z = false;
        int i4 = i2;
        while (i != -1) {
            int indexOf$default2 = StringsKt.indexOf$default((CharSequence) getSource(), "*/", i4, false, 4, (Object) null);
            if (indexOf$default2 != -1) {
                return TuplesKt.to(Integer.valueOf(indexOf$default2 + 2), Boolean.TRUE);
            }
            if (getSource().charAt(getSource().length() - 1) != '*') {
                i4 = prefetchOrEof(getSource().length());
            } else {
                i4 = prefetchWithinThreshold(getSource().length() - 1);
                if (z) {
                    break;
                }
                z = true;
            }
            i = i4;
        }
        this.currentPosition = getSource().length();
        AbstractJsonLexer.fail$default(this, "Expected end of the block comment: \"*/\", but had EOF instead", 0, null, 6, null);
        throw new KotlinNothingValueException();
    }

    private final int prefetchWithinThreshold(int i) {
        if (getSource().length() - i > this.threshold) {
            return i;
        }
        this.currentPosition = i;
        ensureHaveChars();
        if (this.currentPosition == 0 && getSource().length() != 0) {
            return 0;
        }
        return -1;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public boolean canConsumeValue() {
        ensureHaveChars();
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces < getSource().length() && skipWhitespaces != -1) {
            return isValidValueStart(getSource().charAt(skipWhitespaces));
        }
        return false;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public void consumeNextToken(char c) {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces >= source.length() || skipWhitespaces == -1) {
            this.currentPosition = -1;
            unexpectedToken(c);
        }
        char charAt = source.charAt(skipWhitespaces);
        this.currentPosition = skipWhitespaces + 1;
        if (charAt == c) {
            return;
        }
        unexpectedToken(c);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte peekNextToken() {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces < source.length() && skipWhitespaces != -1) {
            this.currentPosition = skipWhitespaces;
            return AbstractJsonLexerKt.charToTokenClass(source.charAt(skipWhitespaces));
        }
        return (byte) 10;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public int skipWhitespaces() {
        int prefetchOrEof;
        int i = this.currentPosition;
        while (true) {
            prefetchOrEof = prefetchOrEof(i);
            if (prefetchOrEof != -1) {
                char charAt = getSource().charAt(prefetchOrEof);
                if (charAt != ' ' && charAt != '\n' && charAt != '\r' && charAt != '\t') {
                    if (charAt != '/' || prefetchOrEof + 1 >= getSource().length()) {
                        break;
                    }
                    Pair<Integer, Boolean> handleComment = handleComment(prefetchOrEof);
                    int intValue = handleComment.component1().intValue();
                    if (!handleComment.component2().booleanValue()) {
                        prefetchOrEof = intValue;
                        break;
                    }
                    i = intValue;
                } else {
                    i = prefetchOrEof + 1;
                }
            } else {
                break;
            }
        }
        this.currentPosition = prefetchOrEof;
        return prefetchOrEof;
    }

    @Override // kotlinx.serialization.json.internal.ReaderJsonLexer, kotlinx.serialization.json.internal.AbstractJsonLexer
    public byte consumeNextToken() {
        ensureHaveChars();
        ArrayAsSequence source = getSource();
        int skipWhitespaces = skipWhitespaces();
        if (skipWhitespaces >= source.length() || skipWhitespaces == -1) {
            return (byte) 10;
        }
        this.currentPosition = skipWhitespaces + 1;
        return AbstractJsonLexerKt.charToTokenClass(source.charAt(skipWhitespaces));
    }
}
