package com.bumptech.glide.load.engine;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class GlideException extends Exception {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final StackTraceElement[] f4404Wwwwwwwwwwwwwwwwwwwwwwwww = new StackTraceElement[0];
    private static final long serialVersionUID = 1;
    private final List<Throwable> causes;
    private Class<?> dataClass;
    private DataSource dataSource;
    private String detailMessage;
    @Nullable
    private Exception exception;
    private Key key;

    public GlideException(String str) {
        this(str, Collections.EMPTY_LIST);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th, Appendable appendable) {
        try {
            appendable.append(th.getClass().toString()).append(": ").append(th.getMessage()).append('\n');
        } catch (IOException unused) {
            throw new RuntimeException(th);
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Throwable> list, Appendable appendable) throws IOException {
        int size = list.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            appendable.append("Cause (").append(String.valueOf(i2)).append(" of ").append(String.valueOf(size)).append("): ");
            Throwable th = list.get(i);
            if (th instanceof GlideException) {
                ((GlideException) th).Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(appendable);
            } else {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, appendable);
            }
            i = i2;
        }
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(List<Throwable> list, Appendable appendable) {
        try {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(list, appendable);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Appendable appendable) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, appendable);
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(getCauses(), new IndentedAppendable(appendable));
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th, List<Throwable> list) {
        if (th instanceof GlideException) {
            for (Throwable th2 : ((GlideException) th).getCauses()) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th2, list);
            }
            return;
        }
        list.add(th);
    }

    public List<Throwable> getCauses() {
        return this.causes;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        String str2;
        StringBuilder sb = new StringBuilder(71);
        sb.append(this.detailMessage);
        String str3 = "";
        if (this.dataClass == null) {
            str = "";
        } else {
            str = ", " + this.dataClass;
        }
        sb.append(str);
        if (this.dataSource == null) {
            str2 = "";
        } else {
            str2 = ", " + this.dataSource;
        }
        sb.append(str2);
        if (this.key != null) {
            str3 = ", " + this.key;
        }
        sb.append(str3);
        List<Throwable> rootCauses = getRootCauses();
        if (rootCauses.isEmpty()) {
            return sb.toString();
        }
        if (rootCauses.size() == 1) {
            sb.append("\nThere was 1 root cause:");
        } else {
            sb.append("\nThere were ");
            sb.append(rootCauses.size());
            sb.append(" root causes:");
        }
        for (Throwable th : rootCauses) {
            sb.append('\n');
            sb.append(th.getClass().getName());
            sb.append('(');
            sb.append(th.getMessage());
            sb.append(')');
        }
        sb.append("\n call GlideException#logRootCauses(String) for more detail");
        return sb.toString();
    }

    @Nullable
    public Exception getOrigin() {
        return this.exception;
    }

    public List<Throwable> getRootCauses() {
        ArrayList arrayList = new ArrayList();
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, arrayList);
        return arrayList;
    }

    public void logRootCauses(String str) {
        List<Throwable> rootCauses = getRootCauses();
        int size = rootCauses.size();
        int i = 0;
        while (i < size) {
            int i2 = i + 1;
            rootCauses.get(i);
            i = i2;
        }
    }

    @Override // java.lang.Throwable
    public void printStackTrace() {
        printStackTrace(System.err);
    }

    public void setLoggingDetails(Key key, DataSource dataSource) {
        setLoggingDetails(key, dataSource, null);
    }

    public void setOrigin(@Nullable Exception exc) {
        this.exception = exc;
    }

    public GlideException(String str, Throwable th) {
        this(str, Collections.singletonList(th));
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintStream printStream) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(printStream);
    }

    public void setLoggingDetails(Key key, DataSource dataSource, Class<?> cls) {
        this.key = key;
        this.dataSource = dataSource;
        this.dataClass = cls;
    }

    public GlideException(String str, List<Throwable> list) {
        this.detailMessage = str;
        setStackTrace(f4404Wwwwwwwwwwwwwwwwwwwwwwwww);
        this.causes = list;
    }

    @Override // java.lang.Throwable
    public void printStackTrace(PrintWriter printWriter) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(printWriter);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class IndentedAppendable implements Appendable {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public boolean f4405Wwwwwwwwwwwwwwwwwwwwwwww = true;

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final Appendable f4406Wwwwwwwwwwwwwwwwwwwwwwwww;

        public IndentedAppendable(Appendable appendable) {
            this.f4406Wwwwwwwwwwwwwwwwwwwwwwwww = appendable;
        }

        @NonNull
        public final CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable CharSequence charSequence) {
            if (charSequence == null) {
                return "";
            }
            return charSequence;
        }

        @Override // java.lang.Appendable
        public Appendable append(char c) throws IOException {
            if (this.f4405Wwwwwwwwwwwwwwwwwwwwwwww) {
                this.f4405Wwwwwwwwwwwwwwwwwwwwwwww = false;
                this.f4406Wwwwwwwwwwwwwwwwwwwwwwwww.append("  ");
            }
            this.f4405Wwwwwwwwwwwwwwwwwwwwwwww = c == '\n';
            this.f4406Wwwwwwwwwwwwwwwwwwwwwwwww.append(c);
            return this;
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence) throws IOException {
            CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(charSequence);
            return append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, 0, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length());
        }

        @Override // java.lang.Appendable
        public Appendable append(@Nullable CharSequence charSequence, int i, int i2) throws IOException {
            CharSequence Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(charSequence);
            boolean z = false;
            if (this.f4405Wwwwwwwwwwwwwwwwwwwwwwww) {
                this.f4405Wwwwwwwwwwwwwwwwwwwwwwww = false;
                this.f4406Wwwwwwwwwwwwwwwwwwwwwwwww.append("  ");
            }
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.length() > 0 && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.charAt(i2 - 1) == '\n') {
                z = true;
            }
            this.f4405Wwwwwwwwwwwwwwwwwwwwwwww = z;
            this.f4406Wwwwwwwwwwwwwwwwwwwwwwwww.append(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, i, i2);
            return this;
        }
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        return this;
    }
}
