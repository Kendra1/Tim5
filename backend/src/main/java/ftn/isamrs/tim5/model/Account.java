package ftn.isamrs.tim5.model;

import org.hibernate.annotations.Where;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name = "account")
@Inheritance(strategy=InheritanceType.JOINED)
public class Account {

    @Id
    @GeneratedValue(strategy = GenerationType.TABLE)
    private Long id;

    @Column(nullable = false, columnDefinition = "INTEGER DEFAULT 0")
    @Version
    private int version;

    @Column(nullable = false, columnDefinition = "BOOL DEFAULT FALSE")
    private boolean deleted;

    @Column(nullable = false)
    String name;
    @Column(nullable = false)
    String lastName;

    @Column(nullable = false)
    private boolean confirmed;

    @Column(nullable = false)
    private String username;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String email;

    //@Column(nullable = false)
    //private String number;

    @OneToMany(mappedBy = "account", fetch = FetchType.LAZY, cascade = CascadeType.REFRESH)
    private List<AccountAuthority> accountAuthorities;


    public Account(String username, String password, int version, boolean deleted, String name,
                   String lastName, String email, /*String number,*/ boolean confirmed) {
        this.username = username;
        this.version = version;
        this.deleted = deleted;
        this.name = name;
        this.lastName = lastName;
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        this.password = encoder.encode(password);
        this.email = email;
        //this.number = number;
        this.confirmed = confirmed;
    }

    public Account() {
        this.accountAuthorities = new ArrayList<>();
        this.confirmed = false;
    }

    public Account(String username, String password) {
        this.username = username;
        BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
        this.password = encoder.encode(password);
        this.accountAuthorities = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    /*public String getNumber() {
        return number;
    }

    public void setNumber(String number) {
        this.number = number;
    }*/

    public Long getId() { return id; }

    public void setId(Long id) { this.id = id; }

    public String getUsername() { return username; }

    public void setUsername(String username) { this.username = username; }

    public String getPassword() { return password; }

    public void setPassword(String password) { this.password = password; }

    public int getVersion() { return version; }

    public void setVersion(int version) { this.version = version; }

    public boolean isDeleted() { return deleted; }

    public void setDeleted(boolean deleted) { this.deleted = deleted; }

    public List<AccountAuthority> getAccountAuthorities() { return accountAuthorities; }

    public void setAccountAuthorities(List<AccountAuthority> accountAuthorities) { this.accountAuthorities = accountAuthorities; }

    public boolean isConfirmed() { return confirmed; }

    public void setConfirmed(boolean confirmed) { this.confirmed = confirmed; }
}