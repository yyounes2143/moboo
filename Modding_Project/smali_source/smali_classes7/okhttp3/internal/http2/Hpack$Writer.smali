.class public final Lokhttp3/internal/http2/Hpack$Writer;
.super Ljava/lang/Object;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http2/Hpack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0014\n\u0002\u0010\u0011\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u001b\u0010\u000e\u001a\u00020\r2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ%\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0017\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0015\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0015\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0017\u0010\u001e\u001a\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010!\u001a\u00020\r2\u0006\u0010 \u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008!\u0010\"J\u000f\u0010#\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008#\u0010\u001cR\u0016\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010%R\u0014\u0010\u0007\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010&R\u0016\u0010\'\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008!\u0010$R\u0016\u0010(\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010%R\u0016\u0010)\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010$R\u001e\u0010,\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0*8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010+R\u0016\u0010-\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010$R\u0016\u0010/\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010$R\u0016\u00101\u001a\u00020\u00028\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u00080\u0010$\u00a8\u00062"
    }
    d2 = {
        "Lokhttp3/internal/http2/Hpack$Writer;",
        "",
        "",
        "headerTableSizeSetting",
        "",
        "useCompression",
        "Lokio/Buffer;",
        "out",
        "<init>",
        "(IZLokio/Buffer;)V",
        "",
        "Lokhttp3/internal/http2/Header;",
        "headerBlock",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Ljava/util/List;)V",
        "value",
        "prefixMask",
        "bits",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(III)V",
        "Lokio/ByteString;",
        "data",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokio/ByteString;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()V",
        "bytesToRecover",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(I)I",
        "entry",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "(Lokhttp3/internal/http2/Header;)V",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "I",
        "Z",
        "Lokio/Buffer;",
        "smallestHeaderTableSizeSetting",
        "emitDynamicTableSizeUpdate",
        "maxDynamicTableByteCount",
        "",
        "[Lokhttp3/internal/http2/Header;",
        "dynamicTable",
        "nextHeaderIndex",
        "Wwwwwwwwwwwwwwwwwwwwwwwwww",
        "headerCount",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "dynamicTableByteCount",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLokio/Buffer;)V
    .locals 0
    .param p3    # Lokio/Buffer;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 3
    iput-boolean p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 4
    iput-object p3, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    const p2, 0x7fffffff

    .line 5
    iput p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 6
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    const/16 p1, 0x8

    .line 7
    new-array p1, p1, [Lokhttp3/internal/http2/Header;

    iput-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 8
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    return-void
.end method

.method public synthetic constructor <init>(IZLokio/Buffer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/16 p1, 0x1000

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 9
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/http2/Hpack$Writer;-><init>(IZLokio/Buffer;)V

    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V
    .locals 1

    .line 1
    if-ge p1, p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 4
    .line 5
    or-int/2addr p1, p3

    .line 6
    invoke-virtual {p2, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 11
    .line 12
    or-int/2addr p3, p2

    .line 13
    invoke-virtual {v0, p3}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 14
    .line 15
    .line 16
    sub-int/2addr p1, p2

    .line 17
    :goto_0
    const/16 p2, 0x80

    .line 18
    .line 19
    if-lt p1, p2, :cond_1

    .line 20
    .line 21
    and-int/lit8 p3, p1, 0x7f

    .line 22
    .line 23
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 24
    .line 25
    or-int/2addr p2, p3

    .line 26
    invoke-virtual {v0, p2}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 27
    .line 28
    .line 29
    ushr-int/lit8 p1, p1, 0x7

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/util/List;)V
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lokhttp3/internal/http2/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 7
    .line 8
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    const/16 v4, 0x1f

    .line 13
    .line 14
    if-ge v0, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 17
    .line 18
    .line 19
    :cond_0
    iput-boolean v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 20
    .line 21
    const v0, 0x7fffffff

    .line 22
    .line 23
    .line 24
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 25
    .line 26
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 27
    .line 28
    invoke-virtual {p0, v0, v4, v3}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 29
    .line 30
    .line 31
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    move v2, v1

    .line 36
    :goto_0
    if-ge v2, v0, :cond_b

    .line 37
    .line 38
    add-int/lit8 v3, v2, 0x1

    .line 39
    .line 40
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lokhttp3/internal/http2/Header;

    .line 45
    .line 46
    iget-object v4, v2, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 47
    .line 48
    invoke-virtual {v4}, Lokio/ByteString;->toAsciiLowercase()Lokio/ByteString;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget-object v5, v2, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 53
    .line 54
    sget-object v6, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 55
    .line 56
    invoke-virtual {v6}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/util/Map;

    .line 57
    .line 58
    .line 59
    move-result-object v7

    .line 60
    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    check-cast v7, Ljava/lang/Integer;

    .line 65
    .line 66
    const/4 v8, -0x1

    .line 67
    if-eqz v7, :cond_4

    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    add-int/lit8 v9, v7, 0x1

    .line 74
    .line 75
    const/4 v10, 0x2

    .line 76
    if-gt v10, v9, :cond_3

    .line 77
    .line 78
    const/16 v10, 0x8

    .line 79
    .line 80
    if-ge v9, v10, :cond_3

    .line 81
    .line 82
    invoke-virtual {v6}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokhttp3/internal/http2/Header;

    .line 83
    .line 84
    .line 85
    move-result-object v10

    .line 86
    aget-object v10, v10, v7

    .line 87
    .line 88
    iget-object v10, v10, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 89
    .line 90
    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v10

    .line 94
    if-eqz v10, :cond_2

    .line 95
    .line 96
    move v6, v9

    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {v6}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokhttp3/internal/http2/Header;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    aget-object v6, v6, v9

    .line 103
    .line 104
    iget-object v6, v6, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 105
    .line 106
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-eqz v6, :cond_3

    .line 111
    .line 112
    add-int/lit8 v7, v7, 0x2

    .line 113
    .line 114
    move v6, v9

    .line 115
    move v9, v7

    .line 116
    goto :goto_1

    .line 117
    :cond_3
    move v6, v9

    .line 118
    move v9, v8

    .line 119
    goto :goto_1

    .line 120
    :cond_4
    move v6, v8

    .line 121
    move v9, v6

    .line 122
    :goto_1
    if-ne v9, v8, :cond_7

    .line 123
    .line 124
    iget v7, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 125
    .line 126
    add-int/lit8 v7, v7, 0x1

    .line 127
    .line 128
    iget-object v10, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 129
    .line 130
    array-length v10, v10

    .line 131
    :goto_2
    if-ge v7, v10, :cond_7

    .line 132
    .line 133
    add-int/lit8 v11, v7, 0x1

    .line 134
    .line 135
    iget-object v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 136
    .line 137
    aget-object v12, v12, v7

    .line 138
    .line 139
    iget-object v12, v12, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 140
    .line 141
    invoke-static {v12, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v12

    .line 145
    if-eqz v12, :cond_6

    .line 146
    .line 147
    iget-object v12, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 148
    .line 149
    aget-object v12, v12, v7

    .line 150
    .line 151
    iget-object v12, v12, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 152
    .line 153
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v12

    .line 157
    if-eqz v12, :cond_5

    .line 158
    .line 159
    iget v9, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 160
    .line 161
    sub-int/2addr v7, v9

    .line 162
    sget-object v9, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 163
    .line 164
    invoke-virtual {v9}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokhttp3/internal/http2/Header;

    .line 165
    .line 166
    .line 167
    move-result-object v9

    .line 168
    array-length v9, v9

    .line 169
    add-int/2addr v9, v7

    .line 170
    goto :goto_3

    .line 171
    :cond_5
    if-ne v6, v8, :cond_6

    .line 172
    .line 173
    iget v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 174
    .line 175
    sub-int/2addr v7, v6

    .line 176
    sget-object v6, Lokhttp3/internal/http2/Hpack;->INSTANCE:Lokhttp3/internal/http2/Hpack;

    .line 177
    .line 178
    invoke-virtual {v6}, Lokhttp3/internal/http2/Hpack;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()[Lokhttp3/internal/http2/Header;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    array-length v6, v6

    .line 183
    add-int/2addr v6, v7

    .line 184
    :cond_6
    move v7, v11

    .line 185
    goto :goto_2

    .line 186
    :cond_7
    :goto_3
    if-eq v9, v8, :cond_8

    .line 187
    .line 188
    const/16 v2, 0x7f

    .line 189
    .line 190
    const/16 v4, 0x80

    .line 191
    .line 192
    invoke-virtual {p0, v9, v2, v4}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 193
    .line 194
    .line 195
    goto :goto_4

    .line 196
    :cond_8
    const/16 v7, 0x40

    .line 197
    .line 198
    if-ne v6, v8, :cond_9

    .line 199
    .line 200
    iget-object v6, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 201
    .line 202
    invoke-virtual {v6, v7}, Lokio/Buffer;->Illllllllllllllllllllll(I)Lokio/Buffer;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p0, v4}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p0, v2}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Header;)V

    .line 212
    .line 213
    .line 214
    goto :goto_4

    .line 215
    :cond_9
    sget-object v8, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 216
    .line 217
    invoke-virtual {v4, v8}, Lokio/ByteString;->startsWith(Lokio/ByteString;)Z

    .line 218
    .line 219
    .line 220
    move-result v8

    .line 221
    if-eqz v8, :cond_a

    .line 222
    .line 223
    sget-object v8, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/ByteString;

    .line 224
    .line 225
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    if-nez v4, :cond_a

    .line 230
    .line 231
    const/16 v2, 0xf

    .line 232
    .line 233
    invoke-virtual {p0, v6, v2, v1}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 237
    .line 238
    .line 239
    goto :goto_4

    .line 240
    :cond_a
    const/16 v4, 0x3f

    .line 241
    .line 242
    invoke-virtual {p0, v6, v4, v7}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p0, v5}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p0, v2}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Header;)V

    .line 249
    .line 250
    .line 251
    :goto_4
    move v2, v3

    .line 252
    goto/16 :goto_0

    .line 253
    .line 254
    :cond_b
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)V
    .locals 4
    .param p1    # Lokio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 2
    .line 3
    const/16 v1, 0x7f

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lokhttp3/internal/http2/Huffman;->INSTANCE:Lokhttp3/internal/http2/Huffman;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Lokhttp3/internal/http2/Huffman;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    .line 19
    new-instance v2, Lokio/Buffer;

    .line 20
    .line 21
    invoke-direct {v2}, Lokio/Buffer;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1, v2}, Lokhttp3/internal/http2/Huffman;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/ByteString;Lokio/BufferedSink;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lokio/Buffer;->Wwwwwww()Lokio/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/16 v2, 0x80

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 41
    .line 42
    invoke-virtual {v0, p1}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_0
    invoke-virtual {p1}, Lokio/ByteString;->size()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    const/4 v2, 0x0

    .line 51
    invoke-virtual {p0, v0, v1, v2}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww(III)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 55
    .line 56
    invoke-virtual {v0, p1}, Lokio/Buffer;->Illlllllllllllllllllllllll(Lokio/ByteString;)Lokio/Buffer;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)V
    .locals 1

    .line 1
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    const/16 v0, 0x4000

    .line 4
    .line 5
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    if-ne v0, p1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    if-ge p1, v0, :cond_1

    .line 15
    .line 16
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 26
    .line 27
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokhttp3/internal/http2/Header;)V
    .locals 6

    .line 1
    iget v0, p1, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    if-le v0, v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    add-int/2addr v2, v0

    .line 14
    sub-int/2addr v2, v1

    .line 15
    invoke-virtual {p0, v2}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 23
    .line 24
    array-length v3, v2

    .line 25
    if-le v1, v3, :cond_1

    .line 26
    .line 27
    array-length v1, v2

    .line 28
    mul-int/lit8 v1, v1, 0x2

    .line 29
    .line 30
    new-array v1, v1, [Lokhttp3/internal/http2/Header;

    .line 31
    .line 32
    array-length v3, v2

    .line 33
    array-length v4, v2

    .line 34
    const/4 v5, 0x0

    .line 35
    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 39
    .line 40
    array-length v2, v2

    .line 41
    add-int/lit8 v2, v2, -0x1

    .line 42
    .line 43
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    iput-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 46
    .line 47
    :cond_1
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    add-int/lit8 v2, v1, -0x1

    .line 50
    .line 51
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 52
    .line 53
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 54
    .line 55
    aput-object p1, v2, v1

    .line 56
    .line 57
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 58
    .line 59
    add-int/lit8 p1, p1, 0x1

    .line 60
    .line 61
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 62
    .line 63
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-lez p1, :cond_1

    .line 3
    .line 4
    iget-object v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 5
    .line 6
    array-length v1, v1

    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    :goto_0
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    if-lt v1, v2, :cond_0

    .line 12
    .line 13
    if-lez p1, :cond_0

    .line 14
    .line 15
    iget-object v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 16
    .line 17
    aget-object v2, v2, v1

    .line 18
    .line 19
    iget v2, v2, Lokhttp3/internal/http2/Header;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    sub-int/2addr p1, v2

    .line 22
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 23
    .line 24
    sub-int/2addr v3, v2

    .line 25
    iput v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 26
    .line 27
    iget v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 28
    .line 29
    add-int/lit8 v2, v2, -0x1

    .line 30
    .line 31
    iput v2, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 32
    .line 33
    add-int/lit8 v0, v0, 0x1

    .line 34
    .line 35
    add-int/lit8 v1, v1, -0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 39
    .line 40
    add-int/lit8 v1, v2, 0x1

    .line 41
    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    add-int/2addr v2, v0

    .line 45
    iget v3, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 46
    .line 47
    invoke-static {p1, v1, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 51
    .line 52
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 53
    .line 54
    add-int/lit8 v2, v1, 0x1

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    add-int/2addr v1, v0

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-static {p1, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 64
    .line 65
    add-int/2addr p1, v0

    .line 66
    iput p1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 67
    .line 68
    :cond_1
    return v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 6

    .line 1
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 2
    .line 3
    const/4 v4, 0x6

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-static/range {v0 .. v5}, Lkotlin/collections/ArraysKt;->fill$default([Ljava/lang/Object;Ljava/lang/Object;IIILjava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:[Lokhttp3/internal/http2/Header;

    .line 12
    .line 13
    array-length v0, v0

    .line 14
    add-int/lit8 v0, v0, -0x1

    .line 15
    .line 16
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 20
    .line 21
    iput v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 22
    .line 23
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 2

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 2
    .line 3
    iget v1, p0, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 4
    .line 5
    if-ge v0, v1, :cond_1

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    sub-int/2addr v1, v0

    .line 14
    invoke-virtual {p0, v1}, Lokhttp3/internal/http2/Hpack$Writer;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)I

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method
