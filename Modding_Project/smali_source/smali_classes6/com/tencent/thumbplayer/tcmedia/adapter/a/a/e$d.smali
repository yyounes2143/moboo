.class Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;


# direct methods
.method private constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;-><init>(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    return-void
.end method

.method private a(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->z(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->z(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_0
    return p1
.end method

.method private b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->A(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->A(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    :cond_0
    return p1
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->o(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    const-string v0, "onCompletion, unknown err."

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const-string v0, "onCompletion."

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 33
    .line 34
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->q(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->r(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$c;->b()V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 10

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-eq p1, v0, :cond_4

    .line 11
    .line 12
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->g:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 19
    .line 20
    if-eq p1, v0, :cond_4

    .line 21
    .line 22
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 23
    .line 24
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->j:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 29
    .line 30
    if-eq p1, v0, :cond_4

    .line 31
    .line 32
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 39
    .line 40
    if-eq p1, v0, :cond_4

    .line 41
    .line 42
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->i:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 49
    .line 50
    if-ne p1, v0, :cond_0

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    const-string v3, "onError, what: "

    .line 62
    .line 63
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v3, ", extra: "

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {p1, v2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 85
    .line 86
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->h(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->q(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 95
    .line 96
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 97
    .line 98
    .line 99
    const/16 p1, -0x3f2

    .line 100
    .line 101
    const/16 v0, 0x7d0

    .line 102
    .line 103
    if-eq p3, p1, :cond_1

    .line 104
    .line 105
    const/16 p1, -0x3ef

    .line 106
    .line 107
    if-eq p3, p1, :cond_1

    .line 108
    .line 109
    const/16 p1, -0x6e

    .line 110
    .line 111
    const/16 v2, 0x7d1

    .line 112
    .line 113
    if-eq p3, p1, :cond_2

    .line 114
    .line 115
    packed-switch p3, :pswitch_data_0

    .line 116
    .line 117
    .line 118
    if-eq p2, v1, :cond_1

    .line 119
    .line 120
    const/16 p1, 0x64

    .line 121
    .line 122
    if-eq p2, p1, :cond_2

    .line 123
    .line 124
    :cond_1
    move v4, v0

    .line 125
    goto :goto_0

    .line 126
    :cond_2
    :pswitch_0
    move v4, v2

    .line 127
    :goto_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->g(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 133
    .line 134
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->i(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    if-eqz v3, :cond_3

    .line 139
    .line 140
    invoke-static {p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(I)I

    .line 141
    .line 142
    .line 143
    move-result v5

    .line 144
    int-to-long v6, p3

    .line 145
    const-wide/16 v8, 0x0

    .line 146
    .line 147
    invoke-interface/range {v3 .. v9}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$f;->a(IIJJ)V

    .line 148
    .line 149
    .line 150
    :cond_3
    return v1

    .line 151
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    const-string v2, "onError, illegal state:"

    .line 160
    .line 161
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 165
    .line 166
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    const-string v2, ", what:"

    .line 174
    .line 175
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string p2, ", extra:"

    .line 182
    .line 183
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p2

    .line 193
    invoke-virtual {p1, p2}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    return v1

    .line 197
    :pswitch_data_0
    .packed-switch -0x3ed
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p2

    .line 4
    .line 5
    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    const-string v4, "mediaplayer, onInfo. what:"

    .line 14
    .line 15
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v4, ", extra:"

    .line 22
    .line 23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move/from16 v4, p3

    .line 27
    .line 28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2, v3}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v2, 0x3

    .line 39
    const/16 v3, 0x6a

    .line 40
    .line 41
    const/16 v4, 0xc9

    .line 42
    .line 43
    const/16 v5, 0xc8

    .line 44
    .line 45
    const/4 v6, 0x1

    .line 46
    const/4 v7, -0x1

    .line 47
    if-eq v1, v2, :cond_3

    .line 48
    .line 49
    const/16 v2, 0x321

    .line 50
    .line 51
    if-eq v1, v2, :cond_2

    .line 52
    .line 53
    const/16 v2, 0x2bd

    .line 54
    .line 55
    if-eq v1, v2, :cond_1

    .line 56
    .line 57
    const/16 v2, 0x2be

    .line 58
    .line 59
    if-eq v1, v2, :cond_0

    .line 60
    .line 61
    :goto_0
    move v9, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_0
    move v9, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    move v9, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 68
    .line 69
    invoke-static {v1, v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Z)Z

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move v9, v3

    .line 74
    :goto_1
    if-eq v9, v7, :cond_7

    .line 75
    .line 76
    if-eq v5, v9, :cond_5

    .line 77
    .line 78
    if-ne v4, v9, :cond_4

    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_4
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 82
    .line 83
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    if-eqz v1, :cond_7

    .line 88
    .line 89
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 92
    .line 93
    .line 94
    move-result-object v10

    .line 95
    const-wide/16 v14, 0x0

    .line 96
    .line 97
    const/16 v16, 0x0

    .line 98
    .line 99
    const/16 v11, 0x6a

    .line 100
    .line 101
    const-wide/16 v12, 0x0

    .line 102
    .line 103
    invoke-interface/range {v10 .. v16}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;->a(IJJLjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    goto :goto_4

    .line 107
    :cond_5
    :goto_2
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 108
    .line 109
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->s(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_7

    .line 114
    .line 115
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 116
    .line 117
    if-ne v5, v9, :cond_6

    .line 118
    .line 119
    invoke-static {v1, v6}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Z)Z

    .line 120
    .line 121
    .line 122
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 123
    .line 124
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->t(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 125
    .line 126
    .line 127
    goto :goto_3

    .line 128
    :cond_6
    const/4 v2, 0x0

    .line 129
    invoke-static {v1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Z)Z

    .line 130
    .line 131
    .line 132
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 133
    .line 134
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->l(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 135
    .line 136
    .line 137
    :goto_3
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    if-eqz v1, :cond_7

    .line 144
    .line 145
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 146
    .line 147
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->d(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;

    .line 148
    .line 149
    .line 150
    move-result-object v8

    .line 151
    const-wide/16 v12, 0x0

    .line 152
    .line 153
    const/4 v14, 0x0

    .line 154
    const-wide/16 v10, 0x0

    .line 155
    .line 156
    invoke-interface/range {v8 .. v14}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$h;->a(IJJLjava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    :cond_7
    :goto_4
    if-ne v9, v3, :cond_9

    .line 160
    .line 161
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-direct {v0, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a(I)I

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    invoke-direct {v0, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->b(I)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 178
    .line 179
    invoke-static {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->u(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    if-ne v2, v3, :cond_8

    .line 184
    .line 185
    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 186
    .line 187
    invoke-static {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->v(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 188
    .line 189
    .line 190
    move-result v3

    .line 191
    if-eq v1, v3, :cond_9

    .line 192
    .line 193
    :cond_8
    if-lez v2, :cond_9

    .line 194
    .line 195
    if-lez v1, :cond_9

    .line 196
    .line 197
    iget-object v3, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 198
    .line 199
    invoke-static {v3, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;I)I

    .line 200
    .line 201
    .line 202
    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 203
    .line 204
    invoke-static {v2, v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;I)I

    .line 205
    .line 206
    .line 207
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 208
    .line 209
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->w(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    if-eqz v1, :cond_9

    .line 214
    .line 215
    iget-object v1, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 216
    .line 217
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->w(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    iget-object v2, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 222
    .line 223
    invoke-static {v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->v(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 224
    .line 225
    .line 226
    move-result v2

    .line 227
    int-to-long v2, v2

    .line 228
    iget-object v4, v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 229
    .line 230
    invoke-static {v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->u(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 231
    .line 232
    .line 233
    move-result v4

    .line 234
    int-to-long v4, v4

    .line 235
    invoke-interface {v1, v2, v3, v4, v5}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;->a(JJ)V

    .line 236
    .line 237
    .line 238
    :cond_9
    return v6
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->c:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 8
    .line 9
    if-eq p1, v0, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v1, "onPrepared() is called in a wrong situation, mState = "

    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 42
    .line 43
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->m(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Landroid/media/MediaPlayer;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    int-to-long v0, p1

    .line 59
    const-wide/16 v2, 0x0

    .line 60
    .line 61
    cmp-long p1, v0, v2

    .line 62
    .line 63
    if-gtz p1, :cond_1

    .line 64
    .line 65
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 66
    .line 67
    const/4 v2, 0x1

    .line 68
    invoke-static {p1, v2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Z)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    const-string v3, "onPrepared() , mStartPositionMs="

    .line 80
    .line 81
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v3, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->n(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v3, ", duration:"

    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string v0, ", mIsLive:"

    .line 102
    .line 103
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->o(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Z

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 123
    .line 124
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->h(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 128
    .line 129
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->p(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->m(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Landroid/media/MediaPlayer;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "onSeekComplete()."

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    sget-object v0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->e:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 28
    .line 29
    if-ne p1, v0, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->x(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    sget-object v1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->h:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 38
    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 42
    .line 43
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 47
    .line 48
    invoke-static {p1, v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->m(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Landroid/media/MediaPlayer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 58
    .line 59
    .line 60
    :cond_1
    sget-object p1, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;->d:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 61
    .line 62
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->e(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$e;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    if-eq p1, v0, :cond_2

    .line 69
    .line 70
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->y(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    iget-object p1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->y(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-interface {p1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$j;->c()V

    .line 85
    .line 86
    .line 87
    :cond_2
    :goto_0
    return-void
.end method

.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 5

    .line 1
    const-string p1, " height:"

    .line 2
    .line 3
    if-eqz p2, :cond_3

    .line 4
    .line 5
    if-nez p3, :cond_0

    .line 6
    .line 7
    goto :goto_3

    .line 8
    :cond_0
    invoke-direct {p0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a(I)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    invoke-direct {p0, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->b(I)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->v(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-ne p2, v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->u(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eq p3, v0, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catch_0
    move-exception v0

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 36
    .line 37
    if-lez p2, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->w(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    int-to-long v1, p2

    .line 46
    int-to-long v3, p3

    .line 47
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/c$p;->a(JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :goto_1
    iget-object v1, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v1, v0}, Lcom/tencent/thumbplayer/tcmedia/e/a;->d(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 65
    .line 66
    invoke-static {v0, p2}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->b(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;I)I

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 70
    .line 71
    invoke-static {v0, p3}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->a(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;I)I

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    const-string v2, "onVideoSizeChanged(), width:"

    .line 83
    .line 84
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->c(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e$d;->a:Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;

    .line 105
    .line 106
    invoke-static {v0}, Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;->c(Lcom/tencent/thumbplayer/tcmedia/adapter/a/a/e;)Lcom/tencent/thumbplayer/tcmedia/e/a;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    const-string v2, "onVideoSizeChanged() size error, width:"

    .line 113
    .line 114
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {v0, p1}, Lcom/tencent/thumbplayer/tcmedia/e/a;->e(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-void
.end method
