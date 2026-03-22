.class public final Lokio/Buffer$UnsafeCursor;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Buffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsafeCursor"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\r\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\u000c\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0003R\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00108\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R$\u0010\u001f\u001a\u0004\u0018\u00010\u00188\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0019\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001eR\u0016\u0010\u0008\u001a\u00020\u00078\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0018\u0010%\u001a\u0004\u0018\u00010\"8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008#\u0010$R\u0016\u0010(\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010*\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0006\n\u0004\u0008)\u0010\'\u00a8\u0006+"
    }
    d2 = {
        "Lokio/Buffer$UnsafeCursor;",
        "Ljava/io/Closeable;",
        "<init>",
        "()V",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()I",
        "",
        "offset",
        "Kkkkkkkkkkkkkkkkkkkkkkk",
        "(J)I",
        "newSize",
        "Wwwwwwwwwwwwww",
        "(J)J",
        "",
        "close",
        "Lokio/Buffer;",
        "Wwwwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Buffer;",
        "buffer",
        "",
        "Wwwwwwwwwwwwwwwwwwwwwwww",
        "Z",
        "readWrite",
        "Lokio/Segment;",
        "Wwwwwwwwwwwwwwwwwwwwwww",
        "Lokio/Segment;",
        "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww",
        "()Lokio/Segment;",
        "Kkkkkkkkkkkkkkkkkkkkkk",
        "(Lokio/Segment;)V",
        "segment",
        "Wwwwwwwwwwwwwwwwwwwwww",
        "J",
        "",
        "Wwwwwwwwwwwwwwwwwwwww",
        "[B",
        "data",
        "Wwwwwwwwwwwwwwwwwwww",
        "I",
        "start",
        "Wwwwwwwwwwwwwwwwwww",
        "end",
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
        "SMAP\nBuffer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n+ 2 Buffer.kt\nokio/internal/-Buffer\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Util.kt\nokio/-SegmentedByteString\n*L\n1#1,641:1\n1567#2:642\n1568#2:644\n1572#2:645\n1573#2,68:647\n1644#2:715\n1645#2,32:717\n1677#2,18:750\n1698#2:768\n1699#2,18:770\n1721#2:788\n1723#2,7:790\n1#3:643\n1#3:646\n1#3:716\n1#3:769\n1#3:789\n86#4:749\n*S KotlinDebug\n*F\n+ 1 Buffer.kt\nokio/Buffer$UnsafeCursor\n*L\n628#1:642\n628#1:644\n630#1:645\n630#1:647,68\n632#1:715\n632#1:717,32\n632#1:750,18\n634#1:768\n634#1:770,18\n637#1:788\n637#1:790,7\n628#1:643\n630#1:646\n632#1:716\n634#1:769\n637#1:789\n632#1:749\n*E\n"
    }
.end annotation


# instance fields
.field public Wwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwww:I
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwww:[B
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwww:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwww:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 7
    .line 8
    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 10
    .line 11
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V
    .locals 0
    .param p1    # Lokio/Segment;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 2
    .line 3
    return-void
.end method

.method public final Kkkkkkkkkkkkkkkkkkkkkkk(J)I
    .locals 11

    .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    const-wide/16 v1, -0x1

    .line 6
    .line 7
    cmp-long v1, p1, v1

    .line 8
    .line 9
    if-ltz v1, :cond_9

    .line 10
    .line 11
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 12
    .line 13
    .line 14
    move-result-wide v2

    .line 15
    cmp-long v2, p1, v2

    .line 16
    .line 17
    if-gtz v2, :cond_9

    .line 18
    .line 19
    if-eqz v1, :cond_8

    .line 20
    .line 21
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 22
    .line 23
    .line 24
    move-result-wide v1

    .line 25
    cmp-long v1, p1, v1

    .line 26
    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    goto/16 :goto_3

    .line 30
    .line 31
    :cond_0
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 32
    .line 33
    .line 34
    move-result-wide v1

    .line 35
    iget-object v3, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 36
    .line 37
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-wide/16 v5, 0x0

    .line 42
    .line 43
    if-eqz v4, :cond_2

    .line 44
    .line 45
    iget-wide v7, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 46
    .line 47
    iget v4, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 48
    .line 49
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 50
    .line 51
    .line 52
    move-result-object v9

    .line 53
    iget v9, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 54
    .line 55
    sub-int/2addr v4, v9

    .line 56
    int-to-long v9, v4

    .line 57
    sub-long/2addr v7, v9

    .line 58
    cmp-long v4, v7, p1

    .line 59
    .line 60
    if-lez v4, :cond_1

    .line 61
    .line 62
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    move-object v4, v3

    .line 67
    move-object v3, v1

    .line 68
    move-wide v1, v7

    .line 69
    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p0}, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    move-wide v5, v7

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move-object v4, v3

    .line 77
    :goto_0
    sub-long v7, v1, p1

    .line 78
    .line 79
    sub-long v9, p1, v5

    .line 80
    .line 81
    cmp-long v7, v7, v9

    .line 82
    .line 83
    if-lez v7, :cond_3

    .line 84
    .line 85
    :goto_1
    iget v1, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 86
    .line 87
    iget v2, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 88
    .line 89
    sub-int v3, v1, v2

    .line 90
    .line 91
    int-to-long v7, v3

    .line 92
    add-long/2addr v7, v5

    .line 93
    cmp-long v3, p1, v7

    .line 94
    .line 95
    if-ltz v3, :cond_5

    .line 96
    .line 97
    sub-int/2addr v1, v2

    .line 98
    int-to-long v1, v1

    .line 99
    add-long/2addr v5, v1

    .line 100
    iget-object v4, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_3
    :goto_2
    cmp-long v4, v1, p1

    .line 104
    .line 105
    if-lez v4, :cond_4

    .line 106
    .line 107
    iget-object v3, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 108
    .line 109
    iget v4, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 110
    .line 111
    iget v5, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 112
    .line 113
    sub-int/2addr v4, v5

    .line 114
    int-to-long v4, v4

    .line 115
    sub-long/2addr v1, v4

    .line 116
    goto :goto_2

    .line 117
    :cond_4
    move-wide v5, v1

    .line 118
    move-object v4, v3

    .line 119
    :cond_5
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 120
    .line 121
    if-eqz v1, :cond_7

    .line 122
    .line 123
    iget-boolean v1, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 124
    .line 125
    if-eqz v1, :cond_7

    .line 126
    .line 127
    invoke-virtual {v4}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    iget-object v2, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 132
    .line 133
    if-ne v2, v4, :cond_6

    .line 134
    .line 135
    iput-object v1, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 136
    .line 137
    :cond_6
    invoke-virtual {v4, v1}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)Lokio/Segment;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    iget-object v0, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 142
    .line 143
    invoke-virtual {v0}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 144
    .line 145
    .line 146
    :cond_7
    invoke-virtual {p0, v4}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V

    .line 147
    .line 148
    .line 149
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 150
    .line 151
    iget-object v0, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 152
    .line 153
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwww:[B

    .line 154
    .line 155
    iget v0, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 156
    .line 157
    sub-long/2addr p1, v5

    .line 158
    long-to-int p1, p1

    .line 159
    add-int/2addr v0, p1

    .line 160
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 161
    .line 162
    iget p1, v4, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 163
    .line 164
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 165
    .line 166
    sub-int/2addr p1, v0

    .line 167
    return p1

    .line 168
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V

    .line 170
    .line 171
    .line 172
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 173
    .line 174
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwww:[B

    .line 175
    .line 176
    const/4 p1, -0x1

    .line 177
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 178
    .line 179
    iput p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 180
    .line 181
    return p1

    .line 182
    :cond_9
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    .line 183
    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 185
    .line 186
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .line 188
    .line 189
    const-string v3, "offset="

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string p1, " > size="

    .line 198
    .line 199
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 203
    .line 204
    .line 205
    move-result-wide p1

    .line 206
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v1

    .line 217
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 218
    .line 219
    const-string p2, "not attached to a buffer"

    .line 220
    .line 221
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1
.end method

.method public final Wwwwwwwwwwwwww(J)J
    .locals 13

    .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    if-eqz v0, :cond_7

    .line 4
    .line 5
    iget-boolean v1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwww:Z

    .line 6
    .line 7
    if-eqz v1, :cond_6

    .line 8
    .line 9
    invoke-virtual {v0}, Lokio/Buffer;->Kk()J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    cmp-long v3, p1, v1

    .line 14
    .line 15
    const-wide/16 v4, 0x0

    .line 16
    .line 17
    if-gtz v3, :cond_3

    .line 18
    .line 19
    cmp-long v3, p1, v4

    .line 20
    .line 21
    if-ltz v3, :cond_2

    .line 22
    .line 23
    sub-long v6, v1, p1

    .line 24
    .line 25
    :goto_0
    cmp-long v3, v6, v4

    .line 26
    .line 27
    if-lez v3, :cond_1

    .line 28
    .line 29
    iget-object v3, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 30
    .line 31
    iget-object v3, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 32
    .line 33
    iget v8, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 34
    .line 35
    iget v9, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 36
    .line 37
    sub-int v9, v8, v9

    .line 38
    .line 39
    int-to-long v9, v9

    .line 40
    cmp-long v11, v9, v6

    .line 41
    .line 42
    if-gtz v11, :cond_0

    .line 43
    .line 44
    invoke-virtual {v3}, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;

    .line 45
    .line 46
    .line 47
    move-result-object v8

    .line 48
    iput-object v8, v0, Lokio/Buffer;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 49
    .line 50
    invoke-static {v3}, Lokio/SegmentPool;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lokio/Segment;)V

    .line 51
    .line 52
    .line 53
    sub-long/2addr v6, v9

    .line 54
    goto :goto_0

    .line 55
    :cond_0
    long-to-int v4, v6

    .line 56
    sub-int/2addr v8, v4

    .line 57
    iput v8, v3, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 58
    .line 59
    :cond_1
    const/4 v3, 0x0

    .line 60
    invoke-virtual {p0, v3}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V

    .line 61
    .line 62
    .line 63
    iput-wide p1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 64
    .line 65
    iput-object v3, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwww:[B

    .line 66
    .line 67
    const/4 v3, -0x1

    .line 68
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 69
    .line 70
    iput v3, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 71
    .line 72
    goto :goto_2

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    const-string v1, "newSize < 0: "

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p2

    .line 100
    :cond_3
    if-lez v3, :cond_5

    .line 101
    .line 102
    sub-long v6, p1, v1

    .line 103
    .line 104
    const/4 v3, 0x1

    .line 105
    move v8, v3

    .line 106
    :cond_4
    :goto_1
    cmp-long v9, v6, v4

    .line 107
    .line 108
    if-lez v9, :cond_5

    .line 109
    .line 110
    invoke-virtual {v0, v3}, Lokio/Buffer;->Illllllllllllllllllllllllll(I)Lokio/Segment;

    .line 111
    .line 112
    .line 113
    move-result-object v9

    .line 114
    iget v10, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 115
    .line 116
    rsub-int v10, v10, 0x2000

    .line 117
    .line 118
    int-to-long v10, v10

    .line 119
    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->min(JJ)J

    .line 120
    .line 121
    .line 122
    move-result-wide v10

    .line 123
    long-to-int v10, v10

    .line 124
    iget v11, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 125
    .line 126
    add-int/2addr v11, v10

    .line 127
    iput v11, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 128
    .line 129
    int-to-long v11, v10

    .line 130
    sub-long/2addr v6, v11

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    invoke-virtual {p0, v9}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V

    .line 134
    .line 135
    .line 136
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 137
    .line 138
    iget-object v8, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:[B

    .line 139
    .line 140
    iput-object v8, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwww:[B

    .line 141
    .line 142
    iget v8, v9, Lokio/Segment;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 143
    .line 144
    sub-int v9, v8, v10

    .line 145
    .line 146
    iput v9, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 147
    .line 148
    iput v8, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 149
    .line 150
    const/4 v8, 0x0

    .line 151
    goto :goto_1

    .line 152
    :cond_5
    :goto_2
    invoke-virtual {v0, p1, p2}, Lokio/Buffer;->Kkk(J)V

    .line 153
    .line 154
    .line 155
    return-wide v1

    .line 156
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 157
    .line 158
    const-string p2, "resizeBuffer() only permitted for read/write buffers"

    .line 159
    .line 160
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    throw p1

    .line 164
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string p2, "not attached to a buffer"

    .line 167
    .line 168
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    throw p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwww()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 2
    .line 3
    iget-object v2, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 4
    .line 5
    invoke-virtual {v2}, Lokio/Buffer;->Kk()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    cmp-long v0, v0, v2

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-wide v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    const-wide/16 v2, -0x1

    .line 16
    .line 17
    cmp-long v2, v0, v2

    .line 18
    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    const-wide/16 v0, 0x0

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p0, v0, v1}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkkk(J)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    iget v2, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 29
    .line 30
    iget v3, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 31
    .line 32
    sub-int/2addr v2, v3

    .line 33
    int-to-long v2, v2

    .line 34
    add-long/2addr v0, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    .line 38
    const-string v1, "no more bytes"

    .line 39
    .line 40
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v0
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Lokio/Segment;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwww:Lokio/Segment;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwwwwww:Lokio/Buffer;

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lokio/Buffer$UnsafeCursor;->Kkkkkkkkkkkkkkkkkkkkkk(Lokio/Segment;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v1, -0x1

    .line 12
    .line 13
    iput-wide v1, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwwww:J

    .line 14
    .line 15
    iput-object v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwwww:[B

    .line 16
    .line 17
    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwwww:I

    .line 19
    .line 20
    iput v0, p0, Lokio/Buffer$UnsafeCursor;->Wwwwwwwwwwwwwwwwwww:I

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v1, "not attached to a buffer"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw v0
.end method
