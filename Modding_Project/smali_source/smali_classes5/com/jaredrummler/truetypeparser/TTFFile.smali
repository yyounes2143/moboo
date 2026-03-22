.class public Lcom/jaredrummler/truetypeparser/TTFFile;
.super Ljava/lang/Object;
.source "Proguard"


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/jaredrummler/truetypeparser/TTFTableName;",
            "Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;",
            ">;"
        }
    .end annotation
.end field

.field public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashSet;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method public static Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/io/InputStream;)Lcom/jaredrummler/truetypeparser/TTFFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/jaredrummler/truetypeparser/TTFFile;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/jaredrummler/truetypeparser/TTFFile;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/jaredrummler/truetypeparser/FontFileReader;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    .line 8
    .line 9
    if-nez p2, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    add-long/2addr v0, p3

    .line 18
    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 19
    .line 20
    .line 21
    const/4 p1, 0x1

    .line 22
    return p1
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 2
    .line 3
    sget-object v1, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 4
    .line 5
    const-wide/16 v2, 0x2

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 23
    .line 24
    invoke-virtual {v2}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int/2addr v2, v0

    .line 29
    const/4 v3, 0x2

    .line 30
    sub-int/2addr v2, v3

    .line 31
    const/4 v4, 0x4

    .line 32
    add-int/2addr v0, v4

    .line 33
    :goto_0
    add-int/lit8 v5, v1, -0x1

    .line 34
    .line 35
    if-lez v1, :cond_a

    .line 36
    .line 37
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 38
    .line 39
    int-to-long v6, v0

    .line 40
    invoke-virtual {v1, v6, v7}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iget-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 50
    .line 51
    invoke-virtual {v6}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 52
    .line 53
    .line 54
    move-result v6

    .line 55
    iget-object v7, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 56
    .line 57
    invoke-virtual {v7}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    iget-object v8, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 64
    .line 65
    .line 66
    move-result v8

    .line 67
    iget-object v9, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 68
    .line 69
    invoke-virtual {v9}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 70
    .line 71
    .line 72
    move-result v9

    .line 73
    const/4 v10, 0x3

    .line 74
    const/4 v11, 0x1

    .line 75
    if-eq v1, v11, :cond_0

    .line 76
    .line 77
    if-ne v1, v10, :cond_9

    .line 78
    .line 79
    :cond_0
    if-eqz v6, :cond_1

    .line 80
    .line 81
    if-ne v6, v11, :cond_9

    .line 82
    .line 83
    :cond_1
    iget-object v12, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 84
    .line 85
    invoke-virtual {v12}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 86
    .line 87
    .line 88
    move-result v13

    .line 89
    add-int/2addr v13, v2

    .line 90
    int-to-long v13, v13

    .line 91
    invoke-virtual {v12, v13, v14}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 92
    .line 93
    .line 94
    if-ne v1, v10, :cond_2

    .line 95
    .line 96
    iget-object v12, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 97
    .line 98
    invoke-virtual {v12, v9, v6}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    goto :goto_1

    .line 103
    :cond_2
    iget-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 104
    .line 105
    invoke-virtual {v6, v9}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v6

    .line 109
    :goto_1
    if-eqz v8, :cond_8

    .line 110
    .line 111
    if-eq v8, v11, :cond_7

    .line 112
    .line 113
    if-eq v8, v3, :cond_6

    .line 114
    .line 115
    if-eq v8, v4, :cond_4

    .line 116
    .line 117
    const/4 v1, 0x6

    .line 118
    if-eq v8, v1, :cond_3

    .line 119
    .line 120
    const/16 v1, 0x10

    .line 121
    .line 122
    if-eq v8, v1, :cond_7

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_3
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_9

    .line 132
    .line 133
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    iget-object v8, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    if-eqz v8, :cond_5

    .line 143
    .line 144
    if-ne v1, v10, :cond_9

    .line 145
    .line 146
    const/16 v1, 0x409

    .line 147
    .line 148
    if-ne v7, v1, :cond_9

    .line 149
    .line 150
    :cond_5
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 151
    .line 152
    goto :goto_2

    .line 153
    :cond_6
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 154
    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-nez v1, :cond_9

    .line 160
    .line 161
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_7
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Set;

    .line 165
    .line 166
    invoke-interface {v1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_8
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 173
    .line 174
    .line 175
    move-result v1

    .line 176
    if-nez v1, :cond_9

    .line 177
    .line 178
    iput-object v6, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 179
    .line 180
    :cond_9
    :goto_2
    add-int/lit8 v0, v0, 0xc

    .line 181
    .line 182
    move v1, v5

    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_a
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 7
    .line 8
    sget-object v0, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 9
    .line 10
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 19
    .line 20
    const-wide/16 v1, 0x0

    .line 21
    .line 22
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;Lcom/jaredrummler/truetypeparser/TTFTableName;J)Z

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 31
    .line 32
    const-wide/16 v0, 0x2

    .line 33
    .line 34
    invoke-virtual {p1, v0, v1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    iput p1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwww:I

    .line 44
    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 13
    .line 14
    const-wide/16 v2, 0x6

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwww(J)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 25
    .line 26
    new-array v1, v0, [Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    .line 27
    .line 28
    const/4 v2, 0x0

    .line 29
    :goto_0
    if-ge v2, v0, :cond_0

    .line 30
    .line 31
    new-instance v3, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    .line 32
    .line 33
    invoke-direct {v3}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;-><init>()V

    .line 34
    .line 35
    .line 36
    aput-object v3, v1, v2

    .line 37
    .line 38
    iget-object v4, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 39
    .line 40
    invoke-virtual {v3, v4}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Lcom/jaredrummler/truetypeparser/FontFileReader;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iget-object v4, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 45
    .line 46
    invoke-static {v3}, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Ljava/lang/String;)Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    aget-object v5, v1, v2

    .line 51
    .line 52
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/util/Map;

    .line 59
    .line 60
    sget-object v1, Lcom/jaredrummler/truetypeparser/TTFTableName;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/TTFTableName;

    .line 61
    .line 62
    new-instance v2, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Lcom/jaredrummler/truetypeparser/FontFileReader;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/jaredrummler/truetypeparser/FontFileReader;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    int-to-long v3, v3

    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    invoke-direct {v2, v5, v6, v3, v4}, Lcom/jaredrummler/truetypeparser/TTFDirTabEntry;-><init>(JJ)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jaredrummler/truetypeparser/TTFFile;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
