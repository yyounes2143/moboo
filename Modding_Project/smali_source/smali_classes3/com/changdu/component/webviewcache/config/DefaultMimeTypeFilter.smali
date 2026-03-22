.class public Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Lcom/changdu/component/webviewcache/config/MimeTypeFilter;


# instance fields
.field public final a:Ljava/util/HashSet;


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
    iput-object v0, p0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->a:Ljava/util/HashSet;

    .line 10
    .line 11
    const-string v0, "application/javascript"

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "application/ecmascript"

    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "application/x-ecmascript"

    .line 22
    .line 23
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "application/x-javascript"

    .line 27
    .line 28
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "text/ecmascript"

    .line 32
    .line 33
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "text/javascript"

    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "text/javascript1.0"

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "text/javascript1.1"

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "text/javascript1.2"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "text/javascript1.3"

    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "text/javascript1.4"

    .line 62
    .line 63
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "text/javascript1.5"

    .line 67
    .line 68
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "text/jscript"

    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "text/livescript"

    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "text/x-ecmascript"

    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "text/x-javascript"

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "image/gif"

    .line 92
    .line 93
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "image/jpeg"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "image/png"

    .line 102
    .line 103
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "image/svg+xml"

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "image/bmp"

    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "image/webp"

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    const-string v0, "image/tiff"

    .line 122
    .line 123
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    const-string v0, "image/vnd.microsoft.icon"

    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const-string v0, "image/x-icon"

    .line 132
    .line 133
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v0, "text/css"

    .line 137
    .line 138
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v0, "application/octet-stream"

    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v0, "audio/mpeg"

    .line 147
    .line 148
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const-string v0, "video/mp4"

    .line 152
    .line 153
    invoke-virtual {p0, v0}, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->addMimeType(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method


# virtual methods
.method public addMimeType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public clear()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public isFilter(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    xor-int/lit8 p1, p1, 0x1

    .line 8
    .line 9
    return p1
.end method

.method public removeMimeType(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/changdu/component/webviewcache/config/DefaultMimeTypeFilter;->a:Ljava/util/HashSet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method
