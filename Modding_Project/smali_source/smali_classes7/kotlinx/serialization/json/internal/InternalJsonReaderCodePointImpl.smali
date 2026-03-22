.class public abstract Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lkotlinx/serialization/json/internal/InternalJsonReader;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000c\n\u0002\u0008\u0003\n\u0002\u0010\u0019\n\u0002\u0008\u0003\u0008\'\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u001e\u0010\u000b\u001a\u00020\u00072\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007R\u0012\u0010\u0008\u001a\u0004\u0018\u00010\tX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\n\u00a8\u0006\u0010"
    }
    d2 = {
        "Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;",
        "Lkotlinx/serialization/json/internal/InternalJsonReader;",
        "<init>",
        "()V",
        "exhausted",
        "",
        "nextCodePoint",
        "",
        "bufferedChar",
        "",
        "Ljava/lang/Character;",
        "read",
        "buffer",
        "",
        "bufferOffset",
        "count",
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

.annotation runtime Lkotlinx/serialization/json/internal/JsonFriendModuleApi;
.end annotation


# instance fields
.field private bufferedChar:Ljava/lang/Character;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract exhausted()Z
.end method

.method public abstract nextCodePoint()I
.end method

.method public final read([CII)I
    .locals 4
    .param p1    # [C
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;->bufferedChar:Ljava/lang/Character;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aput-char v0, p1, p2

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;->bufferedChar:Ljava/lang/Character;

    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-ge v0, p3, :cond_3

    .line 18
    .line 19
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;->exhausted()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    .line 25
    invoke-virtual {p0}, Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;->nextCodePoint()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const v2, 0xffff

    .line 30
    .line 31
    .line 32
    if-gt v1, v2, :cond_1

    .line 33
    .line 34
    add-int v2, p2, v0

    .line 35
    .line 36
    int-to-char v1, v1

    .line 37
    aput-char v1, p1, v2

    .line 38
    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    ushr-int/lit8 v2, v1, 0xa

    .line 43
    .line 44
    const v3, 0xd7c0

    .line 45
    .line 46
    .line 47
    add-int/2addr v2, v3

    .line 48
    int-to-char v2, v2

    .line 49
    and-int/lit16 v1, v1, 0x3ff

    .line 50
    .line 51
    const v3, 0xdc00

    .line 52
    .line 53
    .line 54
    add-int/2addr v1, v3

    .line 55
    int-to-char v1, v1

    .line 56
    add-int v3, p2, v0

    .line 57
    .line 58
    aput-char v2, p1, v3

    .line 59
    .line 60
    add-int/lit8 v2, v0, 0x1

    .line 61
    .line 62
    if-ge v2, p3, :cond_2

    .line 63
    .line 64
    add-int/2addr v2, p2

    .line 65
    aput-char v1, p1, v2

    .line 66
    .line 67
    add-int/lit8 v0, v0, 0x2

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iput-object v0, p0, Lkotlinx/serialization/json/internal/InternalJsonReaderCodePointImpl;->bufferedChar:Ljava/lang/Character;

    .line 75
    .line 76
    move v0, v2

    .line 77
    goto :goto_0

    .line 78
    :cond_3
    if-lez v0, :cond_4

    .line 79
    .line 80
    return v0

    .line 81
    :cond_4
    const/4 p1, -0x1

    .line 82
    return p1
.end method
