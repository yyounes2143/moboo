.class public Lorg/apache/commons/io/input/XmlStreamReader;
.super Ljava/io/Reader;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

.field public static final Wwwwwwwwwwwwwwwwwwwwwww:[Lorg/apache/commons/io/ByteOrderMark;

.field public static final Wwwwwwwwwwwwwwwwwwwwwwww:[Lorg/apache/commons/io/ByteOrderMark;


# instance fields
.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 1
    const/4 v0, 0x5

    .line 2
    new-array v1, v0, [Lorg/apache/commons/io/ByteOrderMark;

    .line 3
    .line 4
    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_8:Lorg/apache/commons/io/ByteOrderMark;

    .line 5
    .line 6
    const/4 v3, 0x0

    .line 7
    aput-object v2, v1, v3

    .line 8
    .line 9
    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    aput-object v2, v1, v4

    .line 13
    .line 14
    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_16LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 15
    .line 16
    const/4 v5, 0x2

    .line 17
    aput-object v2, v1, v5

    .line 18
    .line 19
    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32BE:Lorg/apache/commons/io/ByteOrderMark;

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    aput-object v2, v1, v6

    .line 23
    .line 24
    sget-object v2, Lorg/apache/commons/io/ByteOrderMark;->UTF_32LE:Lorg/apache/commons/io/ByteOrderMark;

    .line 25
    .line 26
    const/4 v7, 0x4

    .line 27
    aput-object v2, v1, v7

    .line 28
    .line 29
    sput-object v1, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwwwwww:[Lorg/apache/commons/io/ByteOrderMark;

    .line 30
    .line 31
    new-instance v1, Lorg/apache/commons/io/ByteOrderMark;

    .line 32
    .line 33
    const/16 v2, 0x78

    .line 34
    .line 35
    const/16 v8, 0x6d

    .line 36
    .line 37
    const/16 v9, 0x3c

    .line 38
    .line 39
    const/16 v10, 0x3f

    .line 40
    .line 41
    filled-new-array {v9, v10, v2, v8}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    const-string v8, "UTF-8"

    .line 46
    .line 47
    invoke-direct {v1, v8, v2}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Lorg/apache/commons/io/ByteOrderMark;

    .line 51
    .line 52
    filled-new-array {v3, v9, v3, v10}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v8

    .line 56
    const-string v11, "UTF-16BE"

    .line 57
    .line 58
    invoke-direct {v2, v11, v8}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 59
    .line 60
    .line 61
    new-instance v8, Lorg/apache/commons/io/ByteOrderMark;

    .line 62
    .line 63
    const-string v11, "UTF-16LE"

    .line 64
    .line 65
    filled-new-array {v9, v3, v10, v3}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v9

    .line 69
    invoke-direct {v8, v11, v9}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 70
    .line 71
    .line 72
    new-instance v9, Lorg/apache/commons/io/ByteOrderMark;

    .line 73
    .line 74
    const/16 v10, 0x10

    .line 75
    .line 76
    new-array v11, v10, [I

    .line 77
    .line 78
    fill-array-data v11, :array_0

    .line 79
    .line 80
    .line 81
    const-string v12, "UTF-32BE"

    .line 82
    .line 83
    invoke-direct {v9, v12, v11}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 84
    .line 85
    .line 86
    new-instance v11, Lorg/apache/commons/io/ByteOrderMark;

    .line 87
    .line 88
    new-array v10, v10, [I

    .line 89
    .line 90
    fill-array-data v10, :array_1

    .line 91
    .line 92
    .line 93
    const-string v12, "UTF-32LE"

    .line 94
    .line 95
    invoke-direct {v11, v12, v10}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 96
    .line 97
    .line 98
    new-instance v10, Lorg/apache/commons/io/ByteOrderMark;

    .line 99
    .line 100
    const/16 v12, 0xa7

    .line 101
    .line 102
    const/16 v13, 0x94

    .line 103
    .line 104
    const/16 v14, 0x4c

    .line 105
    .line 106
    const/16 v15, 0x6f

    .line 107
    .line 108
    filled-new-array {v14, v15, v12, v13}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v12

    .line 112
    const-string v13, "CP1047"

    .line 113
    .line 114
    invoke-direct {v10, v13, v12}, Lorg/apache/commons/io/ByteOrderMark;-><init>(Ljava/lang/String;[I)V

    .line 115
    .line 116
    .line 117
    const/4 v12, 0x6

    .line 118
    new-array v12, v12, [Lorg/apache/commons/io/ByteOrderMark;

    .line 119
    .line 120
    aput-object v1, v12, v3

    .line 121
    .line 122
    aput-object v2, v12, v4

    .line 123
    .line 124
    aput-object v8, v12, v5

    .line 125
    .line 126
    aput-object v9, v12, v6

    .line 127
    .line 128
    aput-object v11, v12, v7

    .line 129
    .line 130
    aput-object v10, v12, v0

    .line 131
    .line 132
    sput-object v12, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwwwww:[Lorg/apache/commons/io/ByteOrderMark;

    .line 133
    .line 134
    const-string v0, "charset=[\"\']?([.[^; \"\']]*)[\"\']?"

    .line 135
    .line 136
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 141
    .line 142
    const-string v0, "<\\?xml.*encoding[\\s]*=[\\s]*((?:\".[^\"]*\")|(?:\'.[^\']*\'))"

    .line 143
    .line 144
    const/16 v1, 0x8

    .line 145
    .line 146
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    sput-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 151
    .line 152
    return-void

    .line 153
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
    .end array-data

    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    :array_1
    .array-data 4
        0x3c
        0x0
        0x0
        0x0
        0x3f
        0x0
        0x0
        0x0
        0x78
        0x0
        0x0
        0x0
        0x6d
        0x0
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public read([CII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/Reader;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Reader;->read([CII)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
