.class public Lorg/apache/commons/io/output/XmlStreamWriter;
.super Ljava/io/Writer;
.source "Proguard"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final Wwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;


# instance fields
.field public Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

.field public Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

.field public final Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

.field public final Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/commons/io/input/XmlStreamReader;->Wwwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    sput-object v0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public final Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([CII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v1, p3

    .line 12
    const/16 v2, 0x1000

    .line 13
    .line 14
    if-le v1, v2, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    rsub-int v1, v1, 0x1000

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v1, p3

    .line 24
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

    .line 25
    .line 26
    invoke-virtual {v3, p1, p2, v1}, Ljava/io/StringWriter;->write([CII)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    const/4 v4, 0x5

    .line 34
    if-lt v3, v4, :cond_5

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    const-string v5, "<?xml"

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-eqz v4, :cond_3

    .line 48
    .line 49
    const-string v4, "?>"

    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-lez v4, :cond_2

    .line 56
    .line 57
    sget-object v2, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwww:Ljava/util/regex/Pattern;

    .line 58
    .line 59
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    const/4 v3, 0x1

    .line 74
    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 83
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 85
    .line 86
    .line 87
    move-result v4

    .line 88
    sub-int/2addr v4, v3

    .line 89
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v2

    .line 93
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 97
    .line 98
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 99
    .line 100
    goto :goto_1

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    if-lt v3, v2, :cond_4

    .line 106
    .line 107
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 108
    .line 109
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 113
    .line 114
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 115
    .line 116
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 117
    .line 118
    if-eqz v2, :cond_5

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

    .line 122
    .line 123
    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 124
    .line 125
    iget-object v3, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;

    .line 126
    .line 127
    iget-object v4, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 128
    .line 129
    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    iput-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    if-le p3, v1, :cond_5

    .line 142
    .line 143
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 144
    .line 145
    add-int/2addr p2, v1

    .line 146
    sub-int/2addr p3, v1

    .line 147
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 148
    .line 149
    .line 150
    :cond_5
    return-void
.end method

.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 8
    .line 9
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 10
    .line 11
    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwwww:Ljava/io/OutputStream;

    .line 12
    .line 13
    iget-object v2, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwww:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 19
    .line 20
    iget-object v1, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwww:Ljava/io/StringWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww([CII)V

    .line 6
    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/io/output/XmlStreamWriter;->Wwwwwwwwwwwwwwwwwwwwww:Ljava/io/Writer;

    .line 10
    .line 11
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/Writer;->write([CII)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
