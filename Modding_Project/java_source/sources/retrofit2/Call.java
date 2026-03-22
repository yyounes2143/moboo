package retrofit2;

import java.io.IOException;
import okhttp3.Request;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public interface Call<T> extends Cloneable {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwww(Callback<T> callback);

    Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

    void cancel();

    /* renamed from: clone */
    Call<T> mo2041clone();

    Response<T> execute() throws IOException;

    boolean isCanceled();
}
