.class public final Lokio/HashingSink;
.super Lokio/ForwardingSink;
.source "Proguard"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokio/HashingSink$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012J\u001f\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0016\u0010\r\u001a\u0004\u0018\u00010\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0016\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokio/HashingSink;",
        "Lokio/ForwardingSink;",
        "Lokio/Sink;",
        "Lokio/Buffer;",
        "source",
        "",
        "byteCount",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/Buffer;J)V",
        "Ljava/security/MessageDigest;",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Ljava/security/MessageDigest;",
        "messageDigest",
        "Ljavax/crypto/Mac;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Ljavax/crypto/Mac;",
        "mac",
        "Companion",
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
        "SMAP\nHashingSink.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n+ 2 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,148:1\n86#2:149\n*S KotlinDebug\n*F\n+ 1 HashingSink.kt\nokio/HashingSink\n*L\n75#1:149\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lokio/HashingSink$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Mac;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/security/MessageDigest;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lokio/HashingSink$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokio/HashingSink$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokio/HashingSink;->Companion:Lokio/HashingSink$Companion;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V
    .locals 8
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
    invoke-virtual {p1}, Lokio/Buffer;->Kk()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    move-wide v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lokio/-SegmentedByteString;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(JJJ)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 12
    .line 13
    const-wide/16 v0, 0x0

    .line 14
    .line 15
    :goto_0
    cmp-long p3, v0, v4

    .line 16
    .line 17
    if-gez p3, :cond_1

    .line 18
    .line 19
    sub-long v2, v4, v0

    .line 20
    .line 21
    iget p3, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    iget v6, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 24
    .line 25
    sub-int/2addr p3, v6

    .line 26
    int-to-long v6, p3

    .line 27
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 28
    .line 29
    .line 30
    move-result-wide v2

    .line 31
    long-to-int p3, v2

    .line 32
    iget-object v2, p0, Lokio/HashingSink;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/security/MessageDigest;

    .line 33
    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v3, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 37
    .line 38
    iget v6, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 39
    .line 40
    invoke-virtual {v2, v3, v6, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v2, p0, Lokio/HashingSink;->Wwwwwwwwwwwwwwwwwwwwwww:Ljavax/crypto/Mac;

    .line 45
    .line 46
    iget-object v3, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 47
    .line 48
    iget v6, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 49
    .line 50
    invoke-virtual {v2, v3, v6, p3}, Ljavax/crypto/Mac;->update([BII)V

    .line 51
    .line 52
    .line 53
    :goto_1
    int-to-long v2, p3

    .line 54
    add-long/2addr v0, v2

    .line 55
    iget-object p2, p2, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    invoke-super {p0, p1, v4, v5}, Lokio/ForwardingSink;->Wwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Buffer;J)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
