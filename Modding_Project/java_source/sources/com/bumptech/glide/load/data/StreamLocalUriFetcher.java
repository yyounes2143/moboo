package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class StreamLocalUriFetcher extends LocalUriFetcher<InputStream> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final UriMatcher f4217Wwwwwwwwwwwwwwwwwwwwww;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f4217Wwwwwwwwwwwwwwwwwwwwww = uriMatcher;
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*/#", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/lookup/*", 1);
        uriMatcher.addURI("com.android.contacts", "contacts/#/photo", 2);
        uriMatcher.addURI("com.android.contacts", "contacts/#", 3);
        uriMatcher.addURI("com.android.contacts", "contacts/#/display_photo", 4);
        uriMatcher.addURI("com.android.contacts", "phone_lookup/*", 5);
    }

    public StreamLocalUriFetcher(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwww(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }

    public final InputStream Wwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int match = f4217Wwwwwwwwwwwwwwwwwwwwww.match(uri);
        if (match != 1) {
            if (match != 3) {
                if (match != 5) {
                    return contentResolver.openInputStream(uri);
                }
            } else {
                return Wwwwwwwwwwwwwwwwwwwwwwwww(contentResolver, uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwww(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwww */
    public InputStream Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream Wwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwww(uri, contentResolver);
        if (Wwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new FileNotFoundException("InputStream is null for " + uri);
    }

    @Override // com.bumptech.glide.load.data.LocalUriFetcher
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    @NonNull
    public Class<InputStream> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return InputStream.class;
    }
}
