.class public final Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlinx/serialization/json/internal/InternalJsonWriter;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0019\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0010\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0012H\u0016J\u0010\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0010\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015H\u0016J\u0018\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0018\u001a\u00020\u000b2\u0006\u0010\u0019\u001a\u00020\u0015H\u0002J\u0018\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u000bH\u0002J\u0008\u0010\u001d\u001a\u00020\rH\u0016J\u0008\u0010\u001e\u001a\u00020\rH\u0002J\u0011\u0010\u001f\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0082\u0008J\u0011\u0010\u0013\u001a\u00020\r2\u0006\u0010!\u001a\u00020\u000bH\u0082\u0008J\t\u0010\"\u001a\u00020\u000bH\u0082\u0008J\u0018\u0010#\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\t2\u0006\u0010$\u001a\u00020\u000bH\u0002J\u0010\u0010%\u001a\u00020\r2\u0006\u0010&\u001a\u00020\u000bH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;",
        "Lkotlinx/serialization/json/internal/InternalJsonWriter;",
        "stream",
        "Ljava/io/OutputStream;",
        "<init>",
        "(Ljava/io/OutputStream;)V",
        "buffer",
        "",
        "charArray",
        "",
        "indexInBuffer",
        "",
        "writeLong",
        "",
        "value",
        "",
        "writeChar",
        "char",
        "",
        "write",
        "text",
        "",
        "writeQuoted",
        "appendStringSlowPath",
        "currentSize",
        "string",
        "ensureTotalCapacity",
        "oldSize",
        "additional",
        "release",
        "flush",
        "ensure",
        "bytesCount",
        "byte",
        "rest",
        "writeUtf8",
        "count",
        "writeUtf8CodePoint",
        "codePoint",
        "kotlinx-serialization-json"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nJvmJsonStreams.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n130#1:269\n117#1:271\n130#1:272\n118#1,3:273\n125#1,2:276\n130#1:278\n125#1,2:279\n117#1:281\n130#1:282\n118#1,3:283\n125#1,2:286\n125#1,2:288\n117#1:290\n130#1:291\n118#1,3:292\n125#1,2:295\n125#1,2:297\n125#1,2:299\n117#1:301\n130#1:302\n118#1,3:303\n125#1,2:306\n117#1:308\n130#1:309\n118#1,3:310\n125#1,2:313\n125#1,2:315\n125#1,2:317\n125#1,2:319\n117#1:321\n130#1:322\n118#1,3:323\n125#1,2:326\n117#1:328\n130#1:329\n118#1,3:330\n125#1,2:333\n125#1,2:335\n117#1:337\n130#1:338\n118#1,3:339\n125#1,2:342\n117#1:344\n130#1:345\n118#1,3:346\n125#1,2:349\n125#1,2:351\n125#1,2:353\n117#1:355\n130#1:356\n118#1,3:357\n125#1,2:360\n125#1,2:362\n125#1,2:364\n125#1,2:366\n1#2:270\n*S KotlinDebug\n*F\n+ 1 JvmJsonStreams.kt\nkotlinx/serialization/json/internal/JsonToJavaStreamWriter\n*L\n117#1:269\n148#1:271\n148#1:272\n148#1:273,3\n149#1:276,2\n151#1:278\n158#1:279,2\n165#1:281\n165#1:282\n165#1:283,3\n166#1:286,2\n167#1:288,2\n173#1:290\n173#1:291\n173#1:292,3\n174#1:295,2\n175#1:297,2\n176#1:299,2\n186#1:301\n186#1:302\n186#1:303,3\n187#1:306,2\n196#1:308\n196#1:309\n196#1:310,3\n197#1:313,2\n198#1:315,2\n199#1:317,2\n200#1:319,2\n215#1:321\n215#1:322\n215#1:323,3\n216#1:326,2\n221#1:328\n221#1:329\n221#1:330,3\n222#1:333,2\n223#1:335,2\n228#1:337\n228#1:338\n228#1:339,3\n229#1:342,2\n234#1:344\n234#1:345\n234#1:346,3\n235#1:349,2\n236#1:351,2\n237#1:353,2\n242#1:355\n242#1:356\n242#1:357,3\n243#1:360,2\n244#1:362,2\n245#1:364,2\n246#1:366,2\n*E\n"
    }
.end annotation


# instance fields
.field private final buffer:[B
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private charArray:[C
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private indexInBuffer:I

.field private final stream:Ljava/io/OutputStream;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    .line 5
    .line 6
    sget-object p1, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    .line 7
    .line 8
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/ByteArrayPool;->take()[B

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 13
    .line 14
    sget-object p1, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 15
    .line 16
    invoke-virtual {p1}, Lkotlinx/serialization/json/internal/CharArrayPool;->take()[C

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 21
    .line 22
    return-void
.end method

.method private final appendStringSlowPath(ILjava/lang/String;)V
    .locals 6

    .line 1
    add-int/lit8 v0, p1, -0x1

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    :goto_0
    const/4 v2, 0x1

    .line 8
    if-ge v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v3, 0x2

    .line 11
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    array-length v4, v4

    .line 24
    if-ge v3, v4, :cond_2

    .line 25
    .line 26
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    aget-byte v4, v4, v3

    .line 31
    .line 32
    if-nez v4, :cond_0

    .line 33
    .line 34
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 35
    .line 36
    add-int/lit8 v4, p1, 0x1

    .line 37
    .line 38
    int-to-char v3, v3

    .line 39
    aput-char v3, v2, p1

    .line 40
    .line 41
    :goto_1
    move p1, v4

    .line 42
    goto :goto_2

    .line 43
    :cond_0
    if-ne v4, v2, :cond_1

    .line 44
    .line 45
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_STRINGS()[Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    aget-object v2, v2, v3

    .line 50
    .line 51
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-direct {p0, p1, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget-object v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {v2, v4, v5, v3, p1}, Ljava/lang/String;->getChars(II[CI)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    add-int/2addr p1, v2

    .line 74
    goto :goto_2

    .line 75
    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 76
    .line 77
    const/16 v3, 0x5c

    .line 78
    .line 79
    aput-char v3, v2, p1

    .line 80
    .line 81
    add-int/lit8 v3, p1, 0x1

    .line 82
    .line 83
    int-to-char v4, v4

    .line 84
    aput-char v4, v2, v3

    .line 85
    .line 86
    add-int/lit8 p1, p1, 0x2

    .line 87
    .line 88
    goto :goto_2

    .line 89
    :cond_2
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 90
    .line 91
    add-int/lit8 v4, p1, 0x1

    .line 92
    .line 93
    int-to-char v3, v3

    .line 94
    aput-char v3, v2, p1

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_3
    invoke-direct {p0, p1, v2}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 101
    .line 102
    .line 103
    iget-object p2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 104
    .line 105
    add-int/lit8 v0, p1, 0x1

    .line 106
    .line 107
    const/16 v1, 0x22

    .line 108
    .line 109
    aput-char v1, p2, p1

    .line 110
    .line 111
    invoke-direct {p0, p2, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 112
    .line 113
    .line 114
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method private final ensure(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    if-ge v0, p1, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private final ensureTotalCapacity(II)I
    .locals 2

    .line 1
    add-int/2addr p2, p1

    .line 2
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 3
    .line 4
    array-length v1, v0

    .line 5
    if-gt v1, p2, :cond_0

    .line 6
    .line 7
    mul-int/lit8 v1, p1, 0x2

    .line 8
    .line 9
    invoke-static {p2, v1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(II)I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    invoke-static {v0, p2}, Ljava/util/Arrays;->copyOf([CI)[C

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    iput-object p2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 18
    .line 19
    :cond_0
    return p1
.end method

.method private final flush()V
    .locals 4

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->stream:Ljava/io/OutputStream;

    .line 2
    .line 3
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 4
    .line 5
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 12
    .line 13
    return-void
.end method

.method private final rest()I
    .locals 2

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 5
    .line 6
    sub-int/2addr v0, v1

    .line 7
    return v0
.end method

.method private final write(I)V
    .locals 3

    .line 5
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    return-void
.end method

.method private final writeUtf8([CI)V
    .locals 11

    .line 1
    if-ltz p2, :cond_e

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-gt p2, v0, :cond_d

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    move v1, v0

    .line 8
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_c

    .line 9
    .line 10
    aget-char v2, p1, v1

    .line 11
    .line 12
    const/16 v3, 0x80

    .line 13
    .line 14
    const/4 v4, 0x1

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 18
    .line 19
    array-length v5, v5

    .line 20
    iget v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 21
    .line 22
    sub-int/2addr v5, v6

    .line 23
    if-ge v5, v4, :cond_1

    .line 24
    .line 25
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 29
    .line 30
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 31
    .line 32
    add-int/lit8 v6, v5, 0x1

    .line 33
    .line 34
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 35
    .line 36
    int-to-byte v2, v2

    .line 37
    aput-byte v2, v4, v5

    .line 38
    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    array-length v2, v4

    .line 42
    sub-int/2addr v2, v6

    .line 43
    add-int/2addr v2, v1

    .line 44
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    :goto_1
    if-ge v1, v2, :cond_0

    .line 49
    .line 50
    aget-char v4, p1, v1

    .line 51
    .line 52
    if-ge v4, v3, :cond_0

    .line 53
    .line 54
    iget-object v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 55
    .line 56
    iget v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 57
    .line 58
    add-int/lit8 v7, v6, 0x1

    .line 59
    .line 60
    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 61
    .line 62
    int-to-byte v4, v4

    .line 63
    aput-byte v4, v5, v6

    .line 64
    .line 65
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_2
    const/16 v5, 0x800

    .line 69
    .line 70
    if-ge v2, v5, :cond_4

    .line 71
    .line 72
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 73
    .line 74
    array-length v4, v4

    .line 75
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 76
    .line 77
    sub-int/2addr v4, v5

    .line 78
    const/4 v5, 0x2

    .line 79
    if-ge v4, v5, :cond_3

    .line 80
    .line 81
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 82
    .line 83
    .line 84
    :cond_3
    shr-int/lit8 v4, v2, 0x6

    .line 85
    .line 86
    or-int/lit16 v4, v4, 0xc0

    .line 87
    .line 88
    iget-object v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 89
    .line 90
    iget v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 91
    .line 92
    add-int/lit8 v8, v7, 0x1

    .line 93
    .line 94
    iput v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 95
    .line 96
    int-to-byte v4, v4

    .line 97
    aput-byte v4, v6, v7

    .line 98
    .line 99
    and-int/lit8 v2, v2, 0x3f

    .line 100
    .line 101
    or-int/2addr v2, v3

    .line 102
    add-int/2addr v7, v5

    .line 103
    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 104
    .line 105
    int-to-byte v2, v2

    .line 106
    aput-byte v2, v6, v8

    .line 107
    .line 108
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_4
    const v5, 0xd800

    .line 112
    .line 113
    .line 114
    const/16 v6, 0x3f

    .line 115
    .line 116
    if-lt v2, v5, :cond_a

    .line 117
    .line 118
    const v5, 0xdfff

    .line 119
    .line 120
    .line 121
    if-le v2, v5, :cond_5

    .line 122
    .line 123
    goto/16 :goto_4

    .line 124
    .line 125
    :cond_5
    add-int/lit8 v5, v1, 0x1

    .line 126
    .line 127
    if-ge v5, p2, :cond_6

    .line 128
    .line 129
    aget-char v7, p1, v5

    .line 130
    .line 131
    goto :goto_3

    .line 132
    :cond_6
    move v7, v0

    .line 133
    :goto_3
    const v8, 0xdbff

    .line 134
    .line 135
    .line 136
    if-gt v2, v8, :cond_8

    .line 137
    .line 138
    const v8, 0xdc00

    .line 139
    .line 140
    .line 141
    if-gt v8, v7, :cond_8

    .line 142
    .line 143
    const v8, 0xe000

    .line 144
    .line 145
    .line 146
    if-ge v7, v8, :cond_8

    .line 147
    .line 148
    and-int/lit16 v2, v2, 0x3ff

    .line 149
    .line 150
    shl-int/lit8 v2, v2, 0xa

    .line 151
    .line 152
    and-int/lit16 v4, v7, 0x3ff

    .line 153
    .line 154
    or-int/2addr v2, v4

    .line 155
    const/high16 v4, 0x10000

    .line 156
    .line 157
    add-int/2addr v2, v4

    .line 158
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 159
    .line 160
    array-length v4, v4

    .line 161
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 162
    .line 163
    sub-int/2addr v4, v5

    .line 164
    const/4 v5, 0x4

    .line 165
    if-ge v4, v5, :cond_7

    .line 166
    .line 167
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 168
    .line 169
    .line 170
    :cond_7
    shr-int/lit8 v4, v2, 0x12

    .line 171
    .line 172
    or-int/lit16 v4, v4, 0xf0

    .line 173
    .line 174
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 175
    .line 176
    iget v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 177
    .line 178
    add-int/lit8 v9, v8, 0x1

    .line 179
    .line 180
    iput v9, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 181
    .line 182
    int-to-byte v4, v4

    .line 183
    aput-byte v4, v7, v8

    .line 184
    .line 185
    shr-int/lit8 v4, v2, 0xc

    .line 186
    .line 187
    and-int/2addr v4, v6

    .line 188
    or-int/2addr v4, v3

    .line 189
    add-int/lit8 v10, v8, 0x2

    .line 190
    .line 191
    iput v10, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 192
    .line 193
    int-to-byte v4, v4

    .line 194
    aput-byte v4, v7, v9

    .line 195
    .line 196
    shr-int/lit8 v4, v2, 0x6

    .line 197
    .line 198
    and-int/2addr v4, v6

    .line 199
    or-int/2addr v4, v3

    .line 200
    add-int/lit8 v9, v8, 0x3

    .line 201
    .line 202
    iput v9, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 203
    .line 204
    int-to-byte v4, v4

    .line 205
    aput-byte v4, v7, v10

    .line 206
    .line 207
    and-int/2addr v2, v6

    .line 208
    or-int/2addr v2, v3

    .line 209
    add-int/2addr v8, v5

    .line 210
    iput v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 211
    .line 212
    int-to-byte v2, v2

    .line 213
    aput-byte v2, v7, v9

    .line 214
    .line 215
    add-int/lit8 v1, v1, 0x2

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_8
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 220
    .line 221
    array-length v1, v1

    .line 222
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 223
    .line 224
    sub-int/2addr v1, v2

    .line 225
    if-ge v1, v4, :cond_9

    .line 226
    .line 227
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 228
    .line 229
    .line 230
    :cond_9
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 231
    .line 232
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 233
    .line 234
    add-int/lit8 v3, v2, 0x1

    .line 235
    .line 236
    iput v3, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 237
    .line 238
    int-to-byte v3, v6

    .line 239
    aput-byte v3, v1, v2

    .line 240
    .line 241
    move v1, v5

    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_a
    :goto_4
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 245
    .line 246
    array-length v4, v4

    .line 247
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 248
    .line 249
    sub-int/2addr v4, v5

    .line 250
    const/4 v5, 0x3

    .line 251
    if-ge v4, v5, :cond_b

    .line 252
    .line 253
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 254
    .line 255
    .line 256
    :cond_b
    shr-int/lit8 v4, v2, 0xc

    .line 257
    .line 258
    or-int/lit16 v4, v4, 0xe0

    .line 259
    .line 260
    iget-object v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 261
    .line 262
    iget v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 263
    .line 264
    add-int/lit8 v9, v8, 0x1

    .line 265
    .line 266
    iput v9, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 267
    .line 268
    int-to-byte v4, v4

    .line 269
    aput-byte v4, v7, v8

    .line 270
    .line 271
    shr-int/lit8 v4, v2, 0x6

    .line 272
    .line 273
    and-int/2addr v4, v6

    .line 274
    or-int/2addr v4, v3

    .line 275
    add-int/lit8 v6, v8, 0x2

    .line 276
    .line 277
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 278
    .line 279
    int-to-byte v4, v4

    .line 280
    aput-byte v4, v7, v9

    .line 281
    .line 282
    and-int/lit8 v2, v2, 0x3f

    .line 283
    .line 284
    or-int/2addr v2, v3

    .line 285
    add-int/2addr v8, v5

    .line 286
    iput v8, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 287
    .line 288
    int-to-byte v2, v2

    .line 289
    aput-byte v2, v7, v6

    .line 290
    .line 291
    goto/16 :goto_2

    .line 292
    .line 293
    :cond_c
    return-void

    .line 294
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    .line 295
    .line 296
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .line 298
    .line 299
    const-string v1, "count > string.length: "

    .line 300
    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    const-string p2, " > "

    .line 308
    .line 309
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    array-length p1, p1

    .line 313
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 321
    .line 322
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p2

    .line 330
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    const-string p2, "count < 0"

    .line 333
    .line 334
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p1
.end method

.method private final writeUtf8CodePoint(I)V
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x80

    .line 3
    .line 4
    if-ge p1, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 7
    .line 8
    array-length v1, v1

    .line 9
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 10
    .line 11
    sub-int/2addr v1, v2

    .line 12
    if-ge v1, v0, :cond_0

    .line 13
    .line 14
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 18
    .line 19
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 20
    .line 21
    add-int/lit8 v2, v1, 0x1

    .line 22
    .line 23
    iput v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 24
    .line 25
    int-to-byte p1, p1

    .line 26
    aput-byte p1, v0, v1

    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    const/16 v2, 0x800

    .line 30
    .line 31
    const/16 v3, 0x3f

    .line 32
    .line 33
    if-ge p1, v2, :cond_3

    .line 34
    .line 35
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 36
    .line 37
    array-length v0, v0

    .line 38
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 39
    .line 40
    sub-int/2addr v0, v2

    .line 41
    const/4 v2, 0x2

    .line 42
    if-ge v0, v2, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 45
    .line 46
    .line 47
    :cond_2
    shr-int/lit8 v0, p1, 0x6

    .line 48
    .line 49
    or-int/lit16 v0, v0, 0xc0

    .line 50
    .line 51
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 52
    .line 53
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 54
    .line 55
    add-int/lit8 v6, v5, 0x1

    .line 56
    .line 57
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 58
    .line 59
    int-to-byte v0, v0

    .line 60
    aput-byte v0, v4, v5

    .line 61
    .line 62
    and-int/2addr p1, v3

    .line 63
    or-int/2addr p1, v1

    .line 64
    add-int/2addr v5, v2

    .line 65
    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 66
    .line 67
    int-to-byte p1, p1

    .line 68
    aput-byte p1, v4, v6

    .line 69
    .line 70
    return-void

    .line 71
    :cond_3
    const v2, 0xd800

    .line 72
    .line 73
    .line 74
    if-gt v2, p1, :cond_5

    .line 75
    .line 76
    const v2, 0xe000

    .line 77
    .line 78
    .line 79
    if-ge p1, v2, :cond_5

    .line 80
    .line 81
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 82
    .line 83
    array-length p1, p1

    .line 84
    iget v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 85
    .line 86
    sub-int/2addr p1, v1

    .line 87
    if-ge p1, v0, :cond_4

    .line 88
    .line 89
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 93
    .line 94
    iget v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 95
    .line 96
    add-int/lit8 v1, v0, 0x1

    .line 97
    .line 98
    iput v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 99
    .line 100
    int-to-byte v1, v3

    .line 101
    aput-byte v1, p1, v0

    .line 102
    .line 103
    return-void

    .line 104
    :cond_5
    const/high16 v0, 0x10000

    .line 105
    .line 106
    if-ge p1, v0, :cond_7

    .line 107
    .line 108
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 109
    .line 110
    array-length v0, v0

    .line 111
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 112
    .line 113
    sub-int/2addr v0, v2

    .line 114
    const/4 v2, 0x3

    .line 115
    if-ge v0, v2, :cond_6

    .line 116
    .line 117
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 118
    .line 119
    .line 120
    :cond_6
    shr-int/lit8 v0, p1, 0xc

    .line 121
    .line 122
    or-int/lit16 v0, v0, 0xe0

    .line 123
    .line 124
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 125
    .line 126
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 127
    .line 128
    add-int/lit8 v6, v5, 0x1

    .line 129
    .line 130
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 131
    .line 132
    int-to-byte v0, v0

    .line 133
    aput-byte v0, v4, v5

    .line 134
    .line 135
    shr-int/lit8 v0, p1, 0x6

    .line 136
    .line 137
    and-int/2addr v0, v3

    .line 138
    or-int/2addr v0, v1

    .line 139
    add-int/lit8 v7, v5, 0x2

    .line 140
    .line 141
    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 142
    .line 143
    int-to-byte v0, v0

    .line 144
    aput-byte v0, v4, v6

    .line 145
    .line 146
    and-int/2addr p1, v3

    .line 147
    or-int/2addr p1, v1

    .line 148
    add-int/2addr v5, v2

    .line 149
    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 150
    .line 151
    int-to-byte p1, p1

    .line 152
    aput-byte p1, v4, v7

    .line 153
    .line 154
    return-void

    .line 155
    :cond_7
    const v0, 0x10ffff

    .line 156
    .line 157
    .line 158
    if-gt p1, v0, :cond_9

    .line 159
    .line 160
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 161
    .line 162
    array-length v0, v0

    .line 163
    iget v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 164
    .line 165
    sub-int/2addr v0, v2

    .line 166
    const/4 v2, 0x4

    .line 167
    if-ge v0, v2, :cond_8

    .line 168
    .line 169
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 170
    .line 171
    .line 172
    :cond_8
    shr-int/lit8 v0, p1, 0x12

    .line 173
    .line 174
    or-int/lit16 v0, v0, 0xf0

    .line 175
    .line 176
    iget-object v4, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 177
    .line 178
    iget v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 179
    .line 180
    add-int/lit8 v6, v5, 0x1

    .line 181
    .line 182
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 183
    .line 184
    int-to-byte v0, v0

    .line 185
    aput-byte v0, v4, v5

    .line 186
    .line 187
    shr-int/lit8 v0, p1, 0xc

    .line 188
    .line 189
    and-int/2addr v0, v3

    .line 190
    or-int/2addr v0, v1

    .line 191
    add-int/lit8 v7, v5, 0x2

    .line 192
    .line 193
    iput v7, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 194
    .line 195
    int-to-byte v0, v0

    .line 196
    aput-byte v0, v4, v6

    .line 197
    .line 198
    shr-int/lit8 v0, p1, 0x6

    .line 199
    .line 200
    and-int/2addr v0, v3

    .line 201
    or-int/2addr v0, v1

    .line 202
    add-int/lit8 v6, v5, 0x3

    .line 203
    .line 204
    iput v6, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 205
    .line 206
    int-to-byte v0, v0

    .line 207
    aput-byte v0, v4, v7

    .line 208
    .line 209
    and-int/2addr p1, v3

    .line 210
    or-int/2addr p1, v1

    .line 211
    add-int/2addr v5, v2

    .line 212
    iput v5, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->indexInBuffer:I

    .line 213
    .line 214
    int-to-byte p1, p1

    .line 215
    aput-byte p1, v4, v6

    .line 216
    .line 217
    return-void

    .line 218
    :cond_9
    new-instance v0, Lkotlinx/serialization/json/internal/JsonEncodingException;

    .line 219
    .line 220
    new-instance v1, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    const-string v2, "Unexpected code point: "

    .line 226
    .line 227
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-direct {v0, p1}, Lkotlinx/serialization/json/internal/JsonEncodingException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw v0
.end method


# virtual methods
.method public release()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlinx/serialization/json/internal/CharArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/CharArrayPool;

    .line 5
    .line 6
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/CharArrayPool;->release([C)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lkotlinx/serialization/json/internal/ByteArrayPool;->INSTANCE:Lkotlinx/serialization/json/internal/ByteArrayPool;

    .line 12
    .line 13
    iget-object v1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->buffer:[B

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lkotlinx/serialization/json/internal/ByteArrayPool;->release([B)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 3
    iget-object v2, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-virtual {p1, v1, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 4
    iget-object p1, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    invoke-direct {p0, p1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    return-void
.end method

.method public writeChar(C)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8CodePoint(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public writeLong(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public writeQuoted(Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    add-int/lit8 v0, v0, 0x2

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {p0, v1, v0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->ensureTotalCapacity(II)I

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->charArray:[C

    .line 12
    .line 13
    const/16 v2, 0x22

    .line 14
    .line 15
    aput-char v2, v0, v1

    .line 16
    .line 17
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    const/4 v4, 0x1

    .line 22
    invoke-virtual {p1, v1, v3, v0, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 23
    .line 24
    .line 25
    add-int/lit8 v1, v3, 0x1

    .line 26
    .line 27
    :goto_0
    if-ge v4, v1, :cond_1

    .line 28
    .line 29
    aget-char v5, v0, v4

    .line 30
    .line 31
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    array-length v6, v6

    .line 36
    if-ge v5, v6, :cond_0

    .line 37
    .line 38
    invoke-static {}, Lkotlinx/serialization/json/internal/StringOpsKt;->getESCAPE_MARKERS()[B

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    aget-byte v5, v6, v5

    .line 43
    .line 44
    if-eqz v5, :cond_0

    .line 45
    .line 46
    invoke-direct {p0, v4, p1}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->appendStringSlowPath(ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    aput-char v2, v0, v1

    .line 54
    .line 55
    add-int/lit8 v3, v3, 0x2

    .line 56
    .line 57
    invoke-direct {p0, v0, v3}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->writeUtf8([CI)V

    .line 58
    .line 59
    .line 60
    invoke-direct {p0}, Lkotlinx/serialization/json/internal/JsonToJavaStreamWriter;->flush()V

    .line 61
    .line 62
    .line 63
    return-void
.end method
