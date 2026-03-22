.class public final Lokio/GzipSource;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lokio/Source;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0005\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u000eH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0010J\'\u0010\u0015\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\'\u0010\u001c\u001a\u00020\u000e2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0019H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dR\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0014\u0010\u0002\u001a\u00020\"8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010(\u001a\u00020%8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0014\u0010,\u001a\u00020)8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010/\u00a8\u00061"
    }
    d2 = {
        "Lokio/GzipSource;",
        "Lokio/Source;",
        "source",
        "<init>",
        "(Lokio/Source;)V",
        "Lokio/Buffer;",
        "sink",
        "",
        "byteCount",
        "read",
        "(Lokio/Buffer;J)J",
        "Lokio/Timeout;",
        "timeout",
        "()Lokio/Timeout;",
        "",
        "close",
        "()V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "Wwwwwwwwwwwwww",
        "buffer",
        "offset",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "(Lokio/Buffer;JJ)V",
        "",
        "name",
        "",
        "expected",
        "actual",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/lang/String;II)V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "B",
        "section",
        "Lokio/RealBufferedSource;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/RealBufferedSource;",
        "Ljava/util/zip/Inflater;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/zip/Inflater;",
        "inflater",
        "Lokio/InflaterSource;",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "Lokio/InflaterSource;",
        "inflaterSource",
        "Ljava/util/zip/CRC32;",
        "Wwwwwwwwwwwwwwwwwwwww",
        "Ljava/util/zip/CRC32;",
        "crc",
        "okio"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGzipSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 RealBufferedSource.kt\nokio/RealBufferedSource\n+ 4 GzipSource.kt\nokio/-GzipSourceExtensions\n+ 5 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,220:1\n1#2:221\n62#3:222\n62#3:224\n62#3:226\n62#3:227\n62#3:228\n62#3:230\n62#3:232\n202#4:223\n202#4:225\n202#4:229\n202#4:231\n89#5:233\n*S KotlinDebug\n*F\n+ 1 GzipSource.kt\nokio/GzipSource\n*L\n105#1:222\n107#1:224\n119#1:226\n120#1:227\n122#1:228\n133#1:230\n144#1:232\n106#1:223\n117#1:225\n130#1:229\n141#1:231\n187#1:233\n*E\n"
    }
.end annotation


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:B


# direct methods
.method public constructor <init>(Lokio/Source;)V
    .locals 2
    .param p1    # Lokio/Source;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lokio/RealBufferedSource;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lokio/RealBufferedSource;-><init>(Lokio/Source;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 10
    .line 11
    new-instance p1, Ljava/util/zip/Inflater;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-direct {p1, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 18
    .line 19
    new-instance v1, Lokio/InflaterSource;

    .line 20
    .line 21
    invoke-direct {v1, v0, p1}, Lokio/InflaterSource;-><init>(Lokio/BufferedSource;Ljava/util/zip/Inflater;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 25
    .line 26
    new-instance p1, Ljava/util/zip/CRC32;

    .line 27
    .line 28
    invoke-direct {p1}, Ljava/util/zip/CRC32;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;

    .line 32
    .line 33
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V
    .locals 4

    .line 1
    iget-object p1, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 2
    .line 3
    :goto_0
    iget v0, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    iget v1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    .line 7
    sub-int v2, v0, v1

    .line 8
    .line 9
    int-to-long v2, v2

    .line 10
    cmp-long v2, p2, v2

    .line 11
    .line 12
    if-ltz v2, :cond_0

    .line 13
    .line 14
    sub-int/2addr v0, v1

    .line 15
    int-to-long v0, v0

    .line 16
    sub-long/2addr p2, v0

    .line 17
    iget-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    :goto_1
    const-wide/16 v0, 0x0

    .line 21
    .line 22
    cmp-long v2, p4, v0

    .line 23
    .line 24
    if-lez v2, :cond_1

    .line 25
    .line 26
    iget v2, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    int-to-long v2, v2

    .line 29
    add-long/2addr v2, p2

    .line 30
    long-to-int p2, v2

    .line 31
    iget p3, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    sub-int/2addr p3, p2

    .line 34
    int-to-long v2, p3

    .line 35
    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    .line 36
    .line 37
    .line 38
    move-result-wide v2

    .line 39
    long-to-int p3, v2

    .line 40
    iget-object v2, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;

    .line 41
    .line 42
    iget-object v3, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 43
    .line 44
    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 45
    .line 46
    .line 47
    int-to-long p2, p3

    .line 48
    sub-long/2addr p4, p2

    .line 49
    iget-object p1, p1, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 50
    .line 51
    move-wide p2, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    return-void
.end method

.method public final Wwwwwwwwwwwwww()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/RealBufferedSource;->Wwwwww()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    long-to-int v1, v1

    .line 14
    const-string v2, "CRC"

    .line 15
    .line 16
    invoke-virtual {p0, v2, v0, v1}, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 20
    .line 21
    invoke-virtual {v0}, Lokio/RealBufferedSource;->Wwwwww()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    iget-object v1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/Inflater;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/util/zip/Inflater;->getBytesWritten()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    long-to-int v1, v1

    .line 32
    const-string v2, "ISIZE"

    .line 33
    .line 34
    invoke-virtual {p0, v2, v0, v1}, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 4
    .line 5
    const-wide/16 v2, 0xa

    .line 6
    .line 7
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwww(J)V

    .line 8
    .line 9
    .line 10
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 11
    .line 12
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 13
    .line 14
    const-wide/16 v2, 0x3

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lokio/Buffer;->Kkkkkkkkkkkkkkkk(J)B

    .line 17
    .line 18
    .line 19
    move-result v6

    .line 20
    shr-int/lit8 v1, v6, 0x1

    .line 21
    .line 22
    const/4 v7, 0x1

    .line 23
    and-int/2addr v1, v7

    .line 24
    const/4 v8, 0x0

    .line 25
    if-ne v1, v7, :cond_0

    .line 26
    .line 27
    move v9, v7

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v9, v8

    .line 30
    :goto_0
    if-eqz v9, :cond_1

    .line 31
    .line 32
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 33
    .line 34
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 35
    .line 36
    const-wide/16 v2, 0x0

    .line 37
    .line 38
    const-wide/16 v4, 0xa

    .line 39
    .line 40
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 44
    .line 45
    invoke-virtual {v1}, Lokio/RealBufferedSource;->readShort()S

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    const-string v2, "ID1ID2"

    .line 50
    .line 51
    const/16 v3, 0x1f8b

    .line 52
    .line 53
    invoke-virtual {v0, v2, v3, v1}, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 57
    .line 58
    const-wide/16 v2, 0x8

    .line 59
    .line 60
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->skip(J)V

    .line 61
    .line 62
    .line 63
    shr-int/lit8 v1, v6, 0x2

    .line 64
    .line 65
    and-int/2addr v1, v7

    .line 66
    if-ne v1, v7, :cond_4

    .line 67
    .line 68
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 69
    .line 70
    const-wide/16 v2, 0x2

    .line 71
    .line 72
    invoke-virtual {v1, v2, v3}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwww(J)V

    .line 73
    .line 74
    .line 75
    if-eqz v9, :cond_2

    .line 76
    .line 77
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 78
    .line 79
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 80
    .line 81
    const-wide/16 v2, 0x0

    .line 82
    .line 83
    const-wide/16 v4, 0x2

    .line 84
    .line 85
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 89
    .line 90
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 91
    .line 92
    invoke-virtual {v1}, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwww()S

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const v2, 0xffff

    .line 97
    .line 98
    .line 99
    and-int/2addr v1, v2

    .line 100
    int-to-long v4, v1

    .line 101
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 102
    .line 103
    invoke-virtual {v1, v4, v5}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwww(J)V

    .line 104
    .line 105
    .line 106
    if-eqz v9, :cond_3

    .line 107
    .line 108
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 109
    .line 110
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 111
    .line 112
    const-wide/16 v2, 0x0

    .line 113
    .line 114
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 115
    .line 116
    .line 117
    :cond_3
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 118
    .line 119
    invoke-virtual {v1, v4, v5}, Lokio/RealBufferedSource;->skip(J)V

    .line 120
    .line 121
    .line 122
    :cond_4
    shr-int/lit8 v1, v6, 0x3

    .line 123
    .line 124
    and-int/2addr v1, v7

    .line 125
    const-wide/16 v10, -0x1

    .line 126
    .line 127
    const-wide/16 v12, 0x1

    .line 128
    .line 129
    if-ne v1, v7, :cond_7

    .line 130
    .line 131
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 132
    .line 133
    invoke-virtual {v1, v8}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(B)J

    .line 134
    .line 135
    .line 136
    move-result-wide v14

    .line 137
    cmp-long v1, v14, v10

    .line 138
    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    if-eqz v9, :cond_5

    .line 142
    .line 143
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 144
    .line 145
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 146
    .line 147
    const-wide/16 v2, 0x0

    .line 148
    .line 149
    add-long v4, v14, v12

    .line 150
    .line 151
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 152
    .line 153
    .line 154
    :cond_5
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 155
    .line 156
    add-long/2addr v14, v12

    .line 157
    invoke-virtual {v1, v14, v15}, Lokio/RealBufferedSource;->skip(J)V

    .line 158
    .line 159
    .line 160
    goto :goto_1

    .line 161
    :cond_6
    new-instance v1, Ljava/io/EOFException;

    .line 162
    .line 163
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 164
    .line 165
    .line 166
    throw v1

    .line 167
    :cond_7
    :goto_1
    shr-int/lit8 v1, v6, 0x4

    .line 168
    .line 169
    and-int/2addr v1, v7

    .line 170
    if-ne v1, v7, :cond_a

    .line 171
    .line 172
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 173
    .line 174
    invoke-virtual {v1, v8}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(B)J

    .line 175
    .line 176
    .line 177
    move-result-wide v6

    .line 178
    cmp-long v1, v6, v10

    .line 179
    .line 180
    if-eqz v1, :cond_9

    .line 181
    .line 182
    if-eqz v9, :cond_8

    .line 183
    .line 184
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 185
    .line 186
    iget-object v1, v1, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 187
    .line 188
    const-wide/16 v2, 0x0

    .line 189
    .line 190
    add-long v4, v6, v12

    .line 191
    .line 192
    invoke-virtual/range {v0 .. v5}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 193
    .line 194
    .line 195
    :cond_8
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 196
    .line 197
    add-long/2addr v6, v12

    .line 198
    invoke-virtual {v1, v6, v7}, Lokio/RealBufferedSource;->skip(J)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_9
    new-instance v1, Ljava/io/EOFException;

    .line 203
    .line 204
    invoke-direct {v1}, Ljava/io/EOFException;-><init>()V

    .line 205
    .line 206
    .line 207
    throw v1

    .line 208
    :cond_a
    :goto_2
    if-eqz v9, :cond_b

    .line 209
    .line 210
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 211
    .line 212
    invoke-virtual {v1}, Lokio/RealBufferedSource;->Wwwwwwwwwwwwwwwwwwww()S

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    iget-object v2, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;

    .line 217
    .line 218
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    .line 219
    .line 220
    .line 221
    move-result-wide v2

    .line 222
    long-to-int v2, v2

    .line 223
    int-to-short v2, v2

    .line 224
    const-string v3, "FHCRC"

    .line 225
    .line 226
    invoke-virtual {v0, v3, v1, v2}, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/zip/CRC32;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/util/zip/CRC32;->reset()V

    .line 232
    .line 233
    .line 234
    :cond_b
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;II)V
    .locals 4

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p3, p2, :cond_0

    .line 3
    .line 4
    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 6
    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object p3

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    new-array v2, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    aput-object p1, v2, v3

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    aput-object p3, v2, p1

    .line 22
    .line 23
    const/4 p1, 0x2

    .line 24
    aput-object p2, v2, p1

    .line 25
    .line 26
    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "%s: actual 0x%08x != expected 0x%08x"

    .line 31
    .line 32
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/InflaterSource;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read(Lokio/Buffer;J)J
    .locals 11
    .param p1    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p2, v0

    .line 4
    .line 5
    if-ltz v2, :cond_6

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    return-wide v0

    .line 10
    :cond_0
    iget-byte v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {p0}, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 16
    .line 17
    .line 18
    iput-byte v1, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 19
    .line 20
    :cond_1
    iget-byte v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const-wide/16 v3, -0x1

    .line 24
    .line 25
    if-ne v0, v1, :cond_3

    .line 26
    .line 27
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 28
    .line 29
    .line 30
    move-result-wide v7

    .line 31
    iget-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwww:Lokio/InflaterSource;

    .line 32
    .line 33
    invoke-virtual {v0, p1, p2, p3}, Lokio/InflaterSource;->read(Lokio/Buffer;J)J

    .line 34
    .line 35
    .line 36
    move-result-wide v9

    .line 37
    cmp-long p2, v9, v3

    .line 38
    .line 39
    if-eqz p2, :cond_2

    .line 40
    .line 41
    move-object v5, p0

    .line 42
    move-object v6, p1

    .line 43
    invoke-virtual/range {v5 .. v10}, Lokio/GzipSource;->Kkkkkkkkkkkkkkkkkkkkkkk(Lokio/Buffer;JJ)V

    .line 44
    .line 45
    .line 46
    return-wide v9

    .line 47
    :cond_2
    move-object v5, p0

    .line 48
    iput-byte v2, v5, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    move-object v5, p0

    .line 52
    :goto_0
    iget-byte p1, v5, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 53
    .line 54
    if-ne p1, v2, :cond_5

    .line 55
    .line 56
    invoke-virtual {p0}, Lokio/GzipSource;->Wwwwwwwwwwwwww()V

    .line 57
    .line 58
    .line 59
    const/4 p1, 0x3

    .line 60
    iput-byte p1, v5, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwwww:B

    .line 61
    .line 62
    iget-object p1, v5, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 63
    .line 64
    invoke-virtual {p1}, Lokio/RealBufferedSource;->Wwwwwwwwwwww()Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_4
    new-instance p1, Ljava/io/IOException;

    .line 72
    .line 73
    const-string p2, "gzip finished without exhausting source"

    .line 74
    .line 75
    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    throw p1

    .line 79
    :cond_5
    :goto_1
    return-wide v3

    .line 80
    :cond_6
    move-object v5, p0

    .line 81
    new-instance p1, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    const-string v0, "byteCount < 0: "

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 99
    .line 100
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p2
.end method

.method public timeout()Lokio/Timeout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/GzipSource;->Wwwwwwwwwwwwwwwwwwwwwwww:Lokio/RealBufferedSource;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokio/RealBufferedSource;->timeout()Lokio/Timeout;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
